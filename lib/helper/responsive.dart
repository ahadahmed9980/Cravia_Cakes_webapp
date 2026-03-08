import 'package:flutter/material.dart';

const int mobileBreakpoint = 600;
const int tabletBreakpoint = 900;
const int desktopBreakpoint = 1200;
const int largeDesktopBreakpoint = 1440;

class Responsive extends StatelessWidget {
  final Widget mobileScreen;
  final Widget? tabletScreen;
  final Widget? desktopScreen;
  final Widget largeDesktopScreen;

  const Responsive({
    super.key,
    required this.mobileScreen,
    this.tabletScreen,
    this.desktopScreen,
    required this.largeDesktopScreen,
  });

  static bool isMobileScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileBreakpoint;

  static bool isTabletScreen(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= mobileBreakpoint && width < tabletBreakpoint;
  }

  static bool isDesktopScreen(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= tabletBreakpoint && width < desktopBreakpoint;
  }

  static bool isLargeDesktopScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopBreakpoint;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;
        if (width >= largeDesktopBreakpoint) {
          return largeDesktopScreen;
        } else if (width >= desktopBreakpoint) {
          return desktopScreen ?? largeDesktopScreen;
        } else if (width >= tabletBreakpoint) {
          return tabletScreen ?? mobileScreen;
        } else {
          return mobileScreen;
        }
      },
    );
  }
}

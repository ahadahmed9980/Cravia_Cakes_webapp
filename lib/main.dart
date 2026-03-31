import 'package:cloudinary_flutter/cloudinary_context.dart';
import 'package:cloudinary_flutter/image/cld_image.dart';
import 'package:cloudinary_url_gen/cloudinary.dart';
import 'package:cravia_cakes/routes/app_routes.dart';

import 'package:cravia_cakes/widgets/layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  CloudinaryContext.cloudinary = Cloudinary.fromCloudName(
    cloudName: "ddtkuouuw",
  );

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCEzRoM3oIyR9-i0hoeCFUBb6U3wdTtT0s",
      authDomain: "cravia-webapp.firebaseapp.com",
      projectId: "cravia-webapp",
      storageBucket: "cravia-webapp.firebasestorage.app",
      messagingSenderId: "32838483646",
      appId: "1:32838483646:web:ddc69d499e6f221467a8ef",
      measurementId: "G-MBPX215WCL",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF8F9FA),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(
              bodyColor: Colors.black,
              fontFamilyFallback: const ['Roboto', 'Corben'],
            ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String publicId = 'main-sample';
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
          width: 500,
          height: 500,
          child: CldImageWidget(
            publicId: publicId, // named parameter
            width: 500,
            height: 500,
          ),
        ),
      ),
    );
  }
}

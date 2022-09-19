

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/screeens/main_screen/main_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black45),
          scaffoldBackgroundColor: Colors.black,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          iconTheme: const IconThemeData(color: Colors.white),
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
          ),
     
          primarySwatch: Colors.blue,
        ),
        home: const ScreenMain(),
      
    );
  }
}

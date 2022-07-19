import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/presentation/MainPage/main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Netflix Clone',
        theme: ThemeData(
            fontFamily: GoogleFonts.oswald().fontFamily,
            scaffoldBackgroundColor: Colors.black,
            primarySwatch: Colors.blue,
            brightness: Brightness.dark),
        home: ScreenMainPage(),
      );
  }
}

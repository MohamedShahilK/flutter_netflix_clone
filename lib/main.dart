import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/application/downloads/downloads_bloc.dart';
import 'package:netflix_clone/domain/core/dependency%20injection/injection.dart';
import 'package:netflix_clone/presentation/MainPage/main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (context) => getIt<DownloadsBloc>()..add(const DownloadsEvent.getDownloadsImage())),
        BlocProvider(create: (context) => getIt<DownloadsBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Netflix Clone',
        theme: ThemeData(
            fontFamily: GoogleFonts.oswald().fontFamily,
            scaffoldBackgroundColor: Colors.black,
            primarySwatch: Colors.blue,
            brightness: Brightness.dark),
        home: ScreenMainPage(),
      ),
    );
  }
}

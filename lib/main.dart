import 'package:flutter/material.dart';
import 'package:flutter_movie_app/core/services/services_locator.dart';

import 'movies/presentation/screens/movies_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MoviesScreen(),
    );
  }
}

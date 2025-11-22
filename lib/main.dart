import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_app/core/services/services_locator.dart';

import 'movies_app.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator().init();
 await dotenv.load(fileName: ".env");

  runApp(const MoviesApp());
}

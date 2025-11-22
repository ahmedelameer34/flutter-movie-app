import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/movies/presentation/components/now_playing_comp.dart';
import 'package:flutter_movie_app/movies/presentation/components/popular_comp.dart';
import 'package:flutter_movie_app/movies/presentation/components/top_rated_comp.dart';
import 'package:flutter_movie_app/movies/presentation/controller/movies_bloc.dart';
import 'package:flutter_movie_app/movies/presentation/controller/movies_events.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../core/services/services_locator.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => sl<MoviesBloc>()
        ..add(MoviesGetNowPlayingEvent())
        ..add(MoviesGetPopularEvent())
        ..add(MoviesGetTopRatedEvent()),
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: SingleChildScrollView(
          key: const Key('movieScrollView'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NowPlayingComponents(),
              Container(
                margin: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        letterSpacing: 0.15,
                      ),
                    ),
                    InkWell(
                      onTap: () {

                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Text('See More',
                                style: TextStyle(color: Colors.white)),
                            Icon(Icons.arrow_forward_ios,
                                size: 16.0, color: Colors.white)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const TopRatedComponents(),
              Container(
                margin: const EdgeInsets.fromLTRB(
                  16.0,
                  24.0,
                  16.0,
                  8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Rated",
                      style: GoogleFonts.poppins(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.15,
                          color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {

                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Text(
                              'See More',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 16.0, color: Colors.white)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const PopularComponents(),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}

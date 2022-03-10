import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';
import 'package:movie_app/models/movie_detail.dart';

import 'widgets.dart';

class CinemaTabView extends StatefulWidget {
  const CinemaTabView({
    Key? key,
  }) : super(key: key);

  @override
  State<CinemaTabView> createState() => _CinemaTabViewState();
}

class _CinemaTabViewState extends State<CinemaTabView>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [
              Text(
                'Today ',
                style: theme.textTheme.headline1,
              ),
              Text(
                'tickets',
                style: theme.textTheme.headline2!.copyWith(fontSize: 35),
              )
            ]),
            const SizedBox(
              height: 20,
            ),
            CinemaMoviecard(
              image: movieDetails[0].imagePoster,
              movieName: movieDetails[0].movieName,
              subName: movieDetails[0].subMovieName,
              leadActorName: movieDetails[0].leadActorname,
              imdbrating: movieDetails[0].imdbRating,
              starRating: movieDetails[0].starRating,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Text(
                'Upcoming ',
                style: theme.textTheme.headline1,
              ),
              Text(
                'tickets',
                style: theme.textTheme.headline2!.copyWith(fontSize: 35),
              )
            ]),
            const SizedBox(
              height: 20,
            ),
            CinemaMoviecard(
              image: movieDetails[4].imagePoster,
              imdbrating: movieDetails[4].imdbRating,
              leadActorName: movieDetails[4].leadActorname,
              movieName: movieDetails[4].movieName,
              subName: movieDetails[4].subMovieName,
              starRating: movieDetails[4].starRating,
            ),
          ],
        ),
      ),
    );
  }
}

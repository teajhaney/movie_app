import 'package:flutter/material.dart';

import '../constant.dart';

class CinemaMoviecard extends StatelessWidget {
  const CinemaMoviecard(
      {Key? key,
      required this.image,
      required this.imdbrating,
      required this.leadActorName,
      required this.starRating,
      required this.movieName,
      required this.subName})
      : super(key: key);
  final String image, movieName, subName, imdbrating, leadActorName, starRating;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 340,
            decoration: BoxDecoration(
              color: kAccentColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            bottom: 10,
            child: Container(
              height: 170,
              width: 145,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Image(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            right: 60,
            bottom: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movieName,
                  style: theme.textTheme.headline3,
                ),
                const SizedBox(height: 10),
                Text(
                  subName,
                  style: theme.textTheme.headline3,
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(Icons.star, color: kRatingColor),
                    Text(
                      starRating,
                      style: theme.textTheme.headline3!
                          .copyWith(color: kRatingColor),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  leadActorName,
                  style: theme.textTheme.headline3,
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            right: 0,
            child: Container(
              height: 25,
              width: 70,
              decoration: BoxDecoration(
                color: kRatingColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  imdbrating,
                  style: theme.textTheme.headline3!.copyWith(
                    color: kBackgroundColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

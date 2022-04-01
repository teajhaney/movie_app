import 'package:flutter/material.dart';

import 'package:movie_app/constant.dart';

import '../models/movie_detail.dart';

import 'package:readmore/readmore.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movie movieDetails;
  const MovieDetailsScreen({
    Key? key,
    required this.movieDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 450,
              width: double.infinity,
              child: Row(
                children: [
                  RotatedBox(
                    quarterTurns: 135,
                    child: SizedBox(
                      height: 120,
                      width: 450,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star_border_outlined,
                            size: 25,
                            color: kIconColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            movieDetails.starRating,
                            style: theme.textTheme.headline3!
                                .copyWith(fontSize: 25),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          const Icon(
                            Icons.calendar_today_outlined,
                            size: 25,
                            color: kIconColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${movieDetails.movieYear}',
                            style: theme.textTheme.headline3!
                                .copyWith(fontSize: 25),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          const Icon(
                            Icons.av_timer,
                            size: 25,
                            color: kIconColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            movieDetails.movieDuration,
                            style: theme.textTheme.headline3!
                                .copyWith(fontSize: 25),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          InkWell(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: kAccentColor2,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Center(
                                child: RotatedBox(
                                  quarterTurns: 45,
                                  child: Icon(
                                    Icons.chevron_left_rounded,
                                    size: 30,
                                    color: kNavIconColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 450,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        child: Hero(
                          tag: 'Details',
                          child: Image(
                            image: AssetImage(
                              movieDetails.imagePoster,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                movieDetails.movieName,
                style: theme.textTheme.headline1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 50,
                left: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    movieDetails.leadActorname,
                    style: theme.textTheme.headline3,
                  ),
                  const Icon(
                    Icons.keyboard_arrow_up_rounded,
                    color: kIconColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Text(
                    'Genre: ',
                    style: theme.textTheme.headline2!
                        .copyWith(fontSize: 25, color: kAccentTextColor),
                  ),
                  Text(
                    movieDetails.movieGenre,
                    style: theme.textTheme.headline2!
                        .copyWith(fontSize: 25, color: kAccentTextColor),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Introduction',
                        style:
                            theme.textTheme.headline1!.copyWith(fontSize: 30),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 130,
                        width: 220,
                        child: SingleChildScrollView(
                          child: ReadMoreText(
                            movieDetails.movieDetails,
                            style: theme.textTheme.headline2!
                                .copyWith(color: kAccentTextColor, height: 1.5),
                            trimLength: 250,
                            trimLines: 5,
                            colorClickableText: kOtherColor,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Read more',
                            trimExpandedText: ' Less',
                          ),
                        ),
                      ),
                    ],
                  ),
                  RotatedBox(
                    quarterTurns: 135,
                    child: Container(
                      height: 70,
                      width: 150,
                      decoration: BoxDecoration(
                        color: kOtherColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'BOOK NOW',
                          style: theme.textTheme.headline2!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

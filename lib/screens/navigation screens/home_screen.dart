import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';
import 'package:movie_app/models/movie_detail.dart';
import 'package:movie_app/screens/screens.dart';
import 'dart:math' as math;

import '../../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 1,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   'Hello Yusuf!',
                    //   style: theme.textTheme.headline1,
                    // ),
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                          text: 'Hello ',
                          style: theme.textTheme.headline1,
                          children: [
                            TextSpan(
                              text: 'yusuf',
                              style: theme.textTheme.headline2!
                                  .copyWith(fontSize: 35),
                            ),
                          ]),
                    ),
                    Text(
                      'Book your favourite movie',
                      style: theme.textTheme.headline2!
                          .copyWith(color: kAccentColor2),
                    ),
                  ],
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/yusuf.jpg'),
                  radius: 30.0,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          const SearchBar(),
          const SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(children: [
              Text(
                'Feature ',
                style: theme.textTheme.headline1,
              ),
              Text(
                'Movies',
                style: theme.textTheme.headline2!.copyWith(fontSize: 35),
              )
            ]),
          ),
          const SizedBox(
            height: 30.0,
          ),
          SizedBox(
            height: 500,
            width: double.infinity,
            child: FractionallySizedBox(
              heightFactor: 0.98,
              child: PageView.builder(
                  controller: _pageController,
                  physics: const ScrollPhysics(),
                  itemCount: movieDetails.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FractionallySizedBox(
                        widthFactor: 0.8,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MovieDetailsScreen(
                                        movieDetails: movieDetails[index],
                                      )),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.all(16),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              child: Hero(
                                tag: 'Details',
                                child: Image(
                                  image: AssetImage(
                                    movieDetails[index].imagePoster,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ));
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

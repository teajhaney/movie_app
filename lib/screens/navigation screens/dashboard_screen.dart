import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';

import '../../widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Tickets',
                  style: theme.textTheme.headline1!.copyWith(fontSize: 40),
                ),
                const Icon(
                  Icons.linear_scale,
                  color: kNavIconColor,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: kAccentColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: kAccentColor2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  tabs: [
                    Text(
                      'Cinema',
                      style: theme.textTheme.headline2!
                          .copyWith(color: kIconColor),
                    ),
                    Text(
                      'Concert',
                      style: theme.textTheme.headline2!
                          .copyWith(color: kIconColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: TabBarView(
                children: [
                  const CinemaTabView(),
                  Container(
                    color: kBackgroundColor,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

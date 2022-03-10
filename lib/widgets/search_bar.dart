import 'package:flutter/material.dart';

import '../constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: kIconColor),
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xFfffffff),
          ),
          suffixIcon: Icon(
            Icons.mic,
            color: kIconColor,
          ),
          filled: true,
          fillColor: kAccentColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

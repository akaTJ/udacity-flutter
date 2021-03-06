// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// TODO: Check if we need to import anything
import 'category.dart';

// TODO: Define any constants
final _fontSize = 30.0;
final _elevation = 0.0;
final _horizontalPadding = 8.0;
final _appBarColor = Colors.green[100];
final _appBarText = Text(
  'Unit Converter',
  style: TextStyle(
    color: Colors.black,
    fontSize: _fontSize,
  ),
);

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.
    final categories = <Category>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(Category(
        name: _categoryNames[i],
        iconLocation: Icons.cake,
        color: _baseColors[i],
      ));
    }

    // TODO: Create a list view of the Categories
    final listView = ListView(
      padding: EdgeInsets.all(_horizontalPadding),
      children: categories,
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      title: _appBarText,
      backgroundColor: _appBarColor,
      centerTitle: true,
      elevation: _elevation,
    );

    return Scaffold(
      appBar: appBar,
      body: Container(
        color: _appBarColor,
        child: listView,
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'theme/theme.dart';

import 'view/homeview/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Martho Evan CV',
      theme: CVColors.defaultTheme,
      home: HomeView(),
    );
  }
}

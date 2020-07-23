import 'package:flutter/material.dart';
import 'package:my_cv_flutter_web_app/theme/theme.dart';
import 'package:my_cv_flutter_web_app/view/homeview/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Martho Evan CV',
      theme: CVColors.defaultTheme,
      home: HomeView(),
    );
  }
}

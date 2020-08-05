
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_cv_flutter_web_app/view/homeview/home_view_mobile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      title: 'Evan Martho',
      theme: CVColors.defaultTheme,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if(width<=1150){
      return HomeViewMobile();
    }else{
      return HomeView();
    }
  }
}

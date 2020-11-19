import 'package:my_cv_flutter_web_app/theme/theme.dart';
import 'package:flutter/material.dart';

class EmAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "Evan Martho",
        style: TextStyle(
            fontFamily: "RobotoRegular", color: CVColors.bluePrimaryColorDark),
      ),
    );
  }
}

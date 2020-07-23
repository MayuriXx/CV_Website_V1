import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Evan Martho",
        ),
      ),
      body: SingleChildScrollView(
        child: Text("Test"),
      ),
    );
  }
}

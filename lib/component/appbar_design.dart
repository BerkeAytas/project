import 'package:flutter/material.dart';

class AppBarDesign extends StatefulWidget {
  const AppBarDesign({Key? key}) : super(key: key);

  @override
  _AppBarDesignState createState() => _AppBarDesignState();
}

class _AppBarDesignState extends State<AppBarDesign> {
  final String appbarTxt = "IMKB Hisse ve Endeksler";

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(appbarTxt),
      centerTitle: false,
    );
  }
}

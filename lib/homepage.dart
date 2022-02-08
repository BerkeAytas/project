import 'package:flutter/material.dart';
import 'package:veripark_project/component/appbar_design.dart';
import 'package:veripark_project/component/drawer_design.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String appbarTxt = "IMKB Hisse ve Endeksler";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(56.0), child: AppBarDesign()),
      drawer: DrawerDesign(),
      body: Text("data"),
    );
  }
}

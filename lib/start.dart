import 'package:flutter/material.dart';
import 'package:veripark_project/component/appbar_design.dart';
import 'package:veripark_project/component/logo.dart';
import 'package:veripark_project/core/base/base_state.dart';
import 'package:veripark_project/homepage.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends BaseState<Start> {
  final String appbarTxt = "IMKB Hisse ve Endeksler";
  final String btnText = "IMKB Hisse Senetleri/Endeksler";
  final String name = "VERİPARK";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(56.0), child: AppBarDesign()),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: dynamicWidth(0.3),
                  child: const Logo(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: dynamicWidth(0.05)),
                  child: Text(
                    name,
                    style: themeData.textTheme.headline4?.copyWith(fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: dynamicHeight(0.03)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: dynamicWidth(0.03)),
                  child: Text(
                    btnText,
                    style: themeData.textTheme.bodyText1?.copyWith(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:veripark_project/core/base/base_state.dart';
import 'package:veripark_project/core/shared/custom.dart';
import 'package:veripark_project/homepage.dart';

class DrawerDesign extends StatefulWidget {
  const DrawerDesign({Key? key}) : super(key: key);

  @override
  _DrawerDesignState createState() => _DrawerDesignState();
}

class _DrawerDesignState extends BaseState<DrawerDesign> {
  final String _home = "Hiise ve Endeskler";
  final String _profile = "Yükselenler";
  final String _category = "Düşenler";
  final String _categoryAdd = "Hacime - 30";
  final String _product = "Hacime - 50";
  final String _productAdd = "Hacime - 100";
  final String titleText = "VERİPARK";
  final String subtitleText = "IMKB Hisse Senetleri/Endeksler";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset("assets/images/logo.png"),
              accountName: Text(
                titleText,
                style: themeData.textTheme.subtitle1?.copyWith(color: primaryColor),
              ),
              accountEmail: Text(
                subtitleText,
                style: themeData.textTheme.subtitle2?.copyWith(color: primaryColor),
              ),
            ),
            _listTileTitle(_home, const HomePage()),
            _listTileTitle(_profile, const HomePage()),
            _listTileTitle(_category, const HomePage()),
            _listTileTitle(_categoryAdd, const HomePage()),
            _listTileTitle(_product, const HomePage()),
            _listTileTitle(_productAdd, const HomePage()),
          ],
        ),
      ),
    );
  }

  SizedBox _listTileTitle(title, tap) {
    return SizedBox(
      height: 55,
      child: ListTile(
        minVerticalPadding: 10.0,
        onTap: () {
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) => tap));
        },
        horizontalTitleGap: -10.0,
        title: Text(title),
      ),
    );
  }
}

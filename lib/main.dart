import 'package:flutter/material.dart';
import 'package:money_manager/Values/colors.dart';
import 'package:money_manager/Views/Home.dart';


final ThemeData _themeData = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: Style.primaryColor,
    primaryColor: Style.primaryColor,
    scaffoldBackgroundColor: Style.secondaryColor,
    cardColor: Style.secondaryColor,
    textTheme: _buildAppTextTheme(base.textTheme),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Style.secondaryColor),
        borderRadius: BorderRadius.circular(12)
      )
    )
  );
}
_buildAppTextTheme(TextTheme base) {
  return base.copyWith(
    body1: TextStyle(
      color: Style.textColor,
      fontSize: 16
    ),
  );
}


void main() => runApp(new MaterialApp(
  theme: _buildAppTheme(),
  home: Home(),
));

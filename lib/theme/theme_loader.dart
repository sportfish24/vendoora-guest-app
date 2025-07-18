
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'theme_token.dart';

Future<ThemeData> loadTheme(String brand) async {
  final data = await rootBundle.loadString('assets/themes/\$brand.json');
  final token = ThemeToken.fromJson(json.decode(data));

  return ThemeData(
    primaryColor: Color(int.parse(token.primaryColor)),
    backgroundColor: Color(int.parse(token.backgroundColor)),
    fontFamily: token.fontFamily,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(int.parse(token.primaryColor)),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Color(int.parse(token.accentColor))),
    ),
  );
}

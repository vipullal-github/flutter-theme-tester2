import 'package:flutter/material.dart';
import 'package:flutter_theme_tester/material_color_generator.dart';

// define your themes here and use them in the app to see how they turn out
ThemeData purpleTheme = ThemeData.from(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: MaterialColorGenerator.from(Colors.purple),
      // Color? primaryColorDark,
      // Color? accentColor,
      // Color? cardColor,
      // Color? backgroundColor,
      // Color? errorColor,
      brightness: Brightness.light,
    ),
    textTheme: Typography.blackHelsinki,
    useMaterial3: false);

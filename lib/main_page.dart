import 'package:flutter/material.dart';
import 'package:flutter_theme_tester/colors_tab.dart';
import 'package:flutter_theme_tester/text_styles_tab.dart';
import 'package:flutter_theme_tester/widgets_tab.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Theme Tester'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'TextStyles'),
              Tab(text: 'Colors'),
              Tab(text: 'Widgets'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TextStylesTab(),
            ColorsTab(),
            WidgetsTab(),
          ],
        ),
      ),
    );
  }
}

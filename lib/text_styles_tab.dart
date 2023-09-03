import 'package:flutter/material.dart';

class TextStylesTab extends StatelessWidget {
  const TextStylesTab({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme tt = Theme.of(context).textTheme;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Body - Large", style: tt.bodyLarge),
          Text("Body - Medium", style: tt.bodyMedium),
          Text("Body - Small", style: tt.bodySmall),
          Text("Display - Large", style: tt.displayLarge),
          Text("Display - Medium", style: tt.displayMedium),
          Text("Display - Small", style: tt.displaySmall),
          Text("Headline - large", style: tt.headlineLarge),
          Text("Headline - Medium", style: tt.headlineMedium),
          Text("Headline - small", style: tt.headlineSmall),
          Text("Label - large", style: tt.labelLarge),
          Text("Label - Medium", style: tt.labelMedium),
          Text("Label - Small", style: tt.labelSmall),
        ],
      ),
    );
  }
}

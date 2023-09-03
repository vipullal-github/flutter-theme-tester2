import 'package:flutter/material.dart';

@immutable
class ColorContainer extends StatelessWidget {
  final Color colorBackground;
  final Color foregroundColor;
  final String textToDisplay;

  const ColorContainer(
      {super.key,
      required this.colorBackground,
      required this.foregroundColor,
      required this.textToDisplay});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(),
        color: colorBackground,
      ),
      child: Text(
        textToDisplay,
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: foregroundColor),
      ),
    );
  }
}

class ColorsTab extends StatelessWidget {
  const ColorsTab({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData td = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColorContainer(
          colorBackground: td.primaryColor,
          foregroundColor: td.colorScheme.onPrimary,
          textToDisplay: "Primary/onPrimary",
        ),
        ColorContainer(
          colorBackground: td.colorScheme.onSecondaryContainer,
          foregroundColor: td.colorScheme.secondaryContainer,
          textToDisplay: "OnSecondary",
        ),
      ],
    );
  }
}

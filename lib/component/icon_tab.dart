import 'package:flutter/material.dart';

class IconTab extends StatelessWidget {
  static const EdgeInsetsGeometry defaultPadding =
      EdgeInsets.fromLTRB(5, 5, 5, 5);

  final Icon icon;
  final Text text;

  final EdgeInsetsGeometry? padding;

  const IconTab({
    super.key,
    required this.icon,
    required this.text,
    this.padding,
  });

  calculatePadding() {
    if (padding == null) {
      return defaultPadding;
    }
    return padding;
  }

  @override
  Widget build(BuildContext context) {
    Widget? current = Padding(
      padding: calculatePadding(),
      child: Row(
        children: [Padding(padding: EdgeInsets.fromLTRB(8, 0, 8, 0),child: icon,), text],
      ),
    );

    return current;
  }
}

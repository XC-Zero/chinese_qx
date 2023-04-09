import 'package:flutter/material.dart';

class IconFloatButton extends StatelessWidget {
  static const EdgeInsetsGeometry defaultPadding =
      EdgeInsets.fromLTRB(15, 0, 35, 0);

  final Icon icon;
  final Text? text;
  final VoidCallback? onPressed;

  final EdgeInsetsGeometry? padding;

  const IconFloatButton({
    super.key,
    required this.icon,
    this.text,
    required this.onPressed,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry p = defaultPadding;
    if (padding != null) {
      p = padding! ;
    }
    var kids = <Widget>[icon];
    if (text != null) {
      kids.add(text!);
    }
    Widget? current = FloatingActionButton(
      onPressed: onPressed,
      child: Padding(
        padding: p,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: kids,
        ),
      ),
    );

    return current;
  }
}

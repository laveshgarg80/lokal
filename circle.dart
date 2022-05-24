import "package:flutter/material.dart";

class Circle extends StatelessWidget {
  final String color;
  // ignore: use_key_in_widget_constructors
  const Circle(this.color);

  int calculateColor(String s) {
    int ans = int.parse(s);
    return ans;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: Color(calculateColor(color)),
        shape: BoxShape.circle,
      ),
    );
  }
}

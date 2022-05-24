import "package:flutter/material.dart";

class CircleIcon extends StatelessWidget {
  final IconData iconVal;
  const CircleIcon(this.iconVal);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0XffE8E8E8),
        ),
      ),
      child: IconButton(
        icon: Icon(iconVal),
        color: const Color(0Xff252B42),
        onPressed: () {},
      ),
    );
  }
}

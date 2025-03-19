import 'package:flutter/material.dart';

class CartItemButton extends StatelessWidget {
  const CartItemButton({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
  });

  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 16,
      backgroundColor: backgroundColor,
      child: FittedBox(
        fit: BoxFit.contain,
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: iconColor,
            size: 16,
          ),
        ),
      ),
    );
  }
}

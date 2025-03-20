import 'package:flutter/material.dart';

class CartItemButton extends StatelessWidget {
  const CartItemButton({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
    this.onPressed,
  });

  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 16,
      backgroundColor: backgroundColor,
      child: FittedBox(
        fit: BoxFit.contain,
        child: IconButton(
          onPressed: onPressed,
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

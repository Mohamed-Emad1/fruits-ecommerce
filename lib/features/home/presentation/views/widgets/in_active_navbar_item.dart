import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: SvgPicture.asset(
        image,
        // colorFilter: const ColorFilter.mode(Color(0xff4E5556), BlendMode.srcIn),
      ),
    );
  }
}

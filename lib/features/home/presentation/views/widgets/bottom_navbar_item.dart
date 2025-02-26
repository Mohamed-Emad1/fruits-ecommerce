import 'package:flutter/material.dart';
import 'package:fruitshup/features/home/domain/entities/bottom_navigationbar_entity.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/active_navbar_item.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/in_active_navbar_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem(
      {super.key, required this.item, required this.isActive});
  final BottomNavigationbarEntity item;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(
            image: item.active,
            title: item.name,
          )
        : InActiveItem(image: item.inActive);
  }
}

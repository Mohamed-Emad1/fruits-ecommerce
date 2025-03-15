import 'package:flutter/material.dart';
import 'package:fruitshup/features/home/domain/entities/bottom_navigationbar_entity.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/bottom_navbar_item.dart';

class CustomBottomNavigationbar extends StatefulWidget {
  const CustomBottomNavigationbar({super.key, this.valueChanged});
  final ValueChanged<int>? valueChanged;

  @override
  State<CustomBottomNavigationbar> createState() =>
      _CustomBottomNavigationbarState();
}

class _CustomBottomNavigationbarState extends State<CustomBottomNavigationbar> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 7,
            offset: Offset(0, -2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bottomNavigationbarEntity.asMap().entries.map((e) {
          var index = e.key;
          var entity = e.value;
          return Expanded(
            flex: index == selectedIndex ? 2 : 1,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                  widget.valueChanged!(index);
                });
              },
              child: NavigationBarItem(
                isActive: index == selectedIndex,
                item: entity,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

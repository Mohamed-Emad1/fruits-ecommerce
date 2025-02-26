import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/generated/l10n.dart';

class BottomNavigationbarEntity {
  final String name;
  final String active, inActive;

  BottomNavigationbarEntity(
      {required this.name, required this.active, required this.inActive});
}

List<BottomNavigationbarEntity> get bottomNavigationbarEntity => [
  BottomNavigationbarEntity(
    name: S.current.home,
    active: Assets.imagesHomeActive,
    inActive: Assets.imagesHome,
  ),
  BottomNavigationbarEntity(
    name: S.current.products,
    active: Assets.imagesWindowActive,
    inActive: Assets.imagesWindow,
  ),
  BottomNavigationbarEntity(
    name: S.current.shopping_cart,
    active: Assets.imagesShoppingCartActive,
    inActive: Assets.imagesShoppingCart,
  ),
  BottomNavigationbarEntity(
    name: S.current.my_account,
    active: Assets.imagesUserActive,
    inActive: Assets.imagesUser,
  )
];

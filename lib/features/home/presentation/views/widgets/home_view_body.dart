import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitshup/constants.dart';
import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/core/widgets/fruit_item.dart';
import 'package:fruitshup/core/widgets/search_text_field.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/best_selling_header.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/custom_home_appbar.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/featured_item_list.dart';
import 'package:fruitshup/generated/l10n.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CustomHomeAppbar(),
                kSizedBox16,
                SearchTextField(
                  hintText: S.of(context).search,
                  suffixIcon: Center(
                    child: SvgPicture.asset(Assets.imagesSearchTextFieldIcon),
                  ),
                  prefixIcon: SvgPicture.asset(Assets.imagesSearchIcon),
                ),
                const SizedBox(
                  height: 12,
                ),
                const FeaturedItemList(),
                const SizedBox(
                  height: 12,
                ),
                const BestSellingHeader(),
                const SizedBox(
                  height: 8,
                ),
                const FruitItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

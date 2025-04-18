import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitshup/constants.dart';
import 'package:fruitshup/core/cubits/product_cubit/product_cubit.dart';
import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/core/widgets/search_text_field.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/products_grid_view_bloc_consumer.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/best_selling_header.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/custom_home_appbar.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/featured_item_list.dart';
import 'package:fruitshup/generated/l10n.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.read<ProductCubit>().getBestSellingProducts();
    super.initState();
  }

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
              ],
            ),
          ),
          const ProductsGridViewBolcConsumer(),
        ],
      ),
    );
  }
}

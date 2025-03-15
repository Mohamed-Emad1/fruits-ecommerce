import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitshup/constants.dart';
import 'package:fruitshup/core/cubits/product_cubit/product_cubit.dart';
import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/core/widgets/custom_header.dart';
import 'package:fruitshup/core/widgets/search_text_field.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/products_grid_view_bloc_consumer.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/products_view_header.dart';
import 'package:fruitshup/generated/l10n.dart';

class ProductsViewBody extends StatefulWidget {
  const ProductsViewBody({super.key});

  @override
  State<ProductsViewBody> createState() => _ProductsViewBodyState();
}

class _ProductsViewBodyState extends State<ProductsViewBody> {
  @override
  void initState() {
    context.read<ProductCubit>().getProducts();
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
                const SizedBox(
                  height: 8,
                ),
                const CustomHeader(
                  title: "Products",
                ),
                kSizedBox16,
                SearchTextField(
                  hintText: S.of(context).search,
                  suffixIcon: Center(
                    child: SvgPicture.asset(Assets.imagesSearchTextFieldIcon),
                  ),
                  prefixIcon: SvgPicture.asset(Assets.imagesSearchIcon),
                ),
                const Divider(),
                ProductsViewHeader(
                  productsLength:
                      BlocProvider.of<ProductCubit>(context).productsLength,
                ),
                const SizedBox(
                  height: 12,
                ),
                const SizedBox(
                  height: 12,
                ),
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

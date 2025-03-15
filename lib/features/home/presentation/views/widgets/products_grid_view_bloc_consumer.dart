import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitshup/core/cubits/product_cubit/product_cubit.dart';
import 'package:fruitshup/core/widgets/custom_error.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/products_grid_view.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/helper_functions/create_dummy_produc.dart';

class ProductsGridViewBolcConsumer extends StatelessWidget {
  const ProductsGridViewBolcConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductFailure) {
          CustomError(
            text: state.errMessgae,
          );
        }
        return Skeletonizer.sliver(
          enabled: state is ProductLoading ? true : false,
          child: ProductsGridView(
            items:
                state is ProductSuccess ? state.products : getDummyProducts(),
          ),
        );
      },
    );
  }
}

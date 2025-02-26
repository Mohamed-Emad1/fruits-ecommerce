import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/features/home/presentation/views/widgets/featured_item_button.dart';
import 'package:fruitshup/generated/l10n.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.of(context).size.width - 32;
    return SizedBox(
      width: itemWidth,
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              top: 0,
              right: itemWidth * 0.08,
              child: Image.asset(
                Assets.imagesFruitsHome,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: itemWidth * 0.5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
                image: DecorationImage(
                    image: Svg(Assets.imagesFeaturedItemBackground),
                    fit: BoxFit.fill),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 33),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      S.of(context).eid_offer,
                      style:
                          AppTextStyles.regular13.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      S.of(context).offer_25,
                      style: AppTextStyles.bold19.copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    const Spacer(),
                    FeaturedItemButton(text: S.of(context).shop_now),
                    const SizedBox(
                      height: 29,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruitshup/core/utils/app_images.dart';
import 'package:fruitshup/features/onboarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subtitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(" مرحبًا بك في"),
              Text(" HUB"),
              Text("Fruit"),
            ],
          ),
        ),

        
        PageViewItem(
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          subtitle:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("ابحث وتسوق"),
              Text(" HUB"),
              Text("Fruit"),
            ],
          ),
        ),
      ],
    );
  }
}

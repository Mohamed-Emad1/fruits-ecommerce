import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitshup/constants.dart';
import 'package:fruitshup/core/services/shared_prefrences_singletone.dart';
import 'package:fruitshup/core/utils/app_text_styles.dart';
import 'package:fruitshup/features/auth/presentation/views/login_view.dart';

import '../../../../../generated/l10n.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subtitle,
      required this.title,
      required this.isVisible});

  final String image, backgroundImage, subtitle;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              SvgPicture.asset(image),
              Positioned(
                top: 0,
                right: 0,
                child: TextButton(
                  onPressed: () {},
                  child: Visibility(
                    visible: isVisible,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(LoginView.routeName);
                        SharedPreferencesSingleton.setBool(
                            kisOnBoardingView, true);
                        // SharedPreferencesSingleton.setBool(isOnBoardingViewSeen, true);
                      },
                      child: Padding(
                        padding: kPadding16,
                        child: Text(
                          S.of(context).skip,
                          style: AppTextStyles.semiBold13,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            subtitle,
            style: AppTextStyles.semiBold13,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

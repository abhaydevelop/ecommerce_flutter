import 'package:ecommerce_application/features/authentication/controller/onboarding_controller.dart';
import 'package:ecommerce_application/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce_application/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce_application/utils/constants/colors.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:ecommerce_application/utils/constants/text_strings.dart';
import 'package:ecommerce_application/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/halper/helper_fuctions.dart';

class ONBoardingScreen extends StatelessWidget {
  const ONBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable  Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onboarding_screen1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onboarding_screen2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onboarding_screen3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          ///Skip Button

          OnBoardingSkip(),

          ///Dot Navigation smoothPageIndicator

          OnBoardingDotNavigation(),

          ///circular button

          OnBoardingNextButton()
        ],
      ),
    );
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = THalperFuncations.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor:  dark ? TColors.primaryColor : TColors.dark),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THalperFuncations.isDarkMode(context);

    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light : TColors.dark,
              dotHeight: 6),
        ));
  }
}

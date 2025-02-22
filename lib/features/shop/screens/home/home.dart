import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_application/common/widgets/custom_shapes/containes/circular_container.dart';
import 'package:ecommerce_application/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce_application/utils/constants/colors.dart';
import 'package:ecommerce_application/utils/constants/image_strings.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containes/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containes/search_container.dart';
import '../../../../common/widgets/images/t_rounded_images.dart';
import '../../../../common/widgets/texts/section_headig.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: TSizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        //categories
                        THomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),

            /*Body Part Of Home Page*/
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: TPromoSlider(banners: [TImages.promobanner1,TImages.promobanner2,TImages.promobanner3,],))
          ],
        ),
      ),
    );
  }
}


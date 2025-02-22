import 'package:ecommerce_application/common/widgets/custom_shapes/containes/rounded_container.dart';
import 'package:ecommerce_application/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerce_application/utils/constants/colors.dart';
import 'package:ecommerce_application/utils/constants/image_strings.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:ecommerce_application/utils/halper/helper_fuctions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../styles/shodows.dart';
import '../../icon/t_circular_icon.dart';
import '../../texts/product_title_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THalperFuncations.isDarkMode(context);
    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.vertialProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkergrey : TColors.white,
      ),
      child: Column(
        children: [
          /*image and wishlist button and discount tag*/
          TRoundedContainer(
            height: 180,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                Center(
                  child: TRoundedImages(
                    imageUrl: TImages.productImageHeadphne1,
                    applyImageRadius: true,
                  ),
                ),
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black)),
                  ),
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    child:
                        TCircularIcon(icon: Iconsax.heart5, color: Colors.red)),
              ],
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwItems / 2,
          ),
          /*Details*/
          Padding(
            padding: EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TProductTitleText(
                  title: 'Black Boat Head Phone',
                  smallSize: true,
                ),
                SizedBox(height: TSizes.spaceBtwItems / 2),
                Row(
                  children: [
                    Text(
                      'Boat',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(width: TSizes.xs),
                    Icon(Iconsax.verify5,
                        color: TColors.primaryColor, size: TSizes.iconXs),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '\$35.50',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

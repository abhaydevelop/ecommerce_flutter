import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:ecommerce_application/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/halper/helper_fuctions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THalperFuncations.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark ? TImages.logo : TImages.logo),
                  ),
                  Text('Welcome Back,', style: Theme.of(context).textTheme.headlineMedium,),
                  const SizedBox(height: TSizes.sm,),
                  Text('Discover Limitless choices and unmatched', style: Theme.of(context).textTheme.bodyMedium,)
                ],
              ),

              Form(child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputField,),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.password_check),
                      labelText: 'Password',
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputField / 2,),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

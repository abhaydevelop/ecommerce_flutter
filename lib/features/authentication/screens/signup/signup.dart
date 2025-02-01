import 'package:ecommerce_application/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_application/utils/constants/colors.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:ecommerce_application/utils/halper/helper_fuctions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THalperFuncations.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lets Create Your Account ',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              Form(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: InputDecoration(
                              labelText: 'First Name',
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                      SizedBox(
                        width: TSizes.spaceBtwInputField,
                      ),
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: InputDecoration(
                              labelText: 'Last Name',
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwInputField,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                        labelText: 'User Name',
                        prefixIcon: Icon(Iconsax.user_edit)),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwInputField,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                        labelText: 'Email', prefixIcon: Icon(Iconsax.direct)),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwInputField,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
                        prefixIcon: Icon(Iconsax.call)),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwInputField,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Iconsax.password_check),
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwInputField,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(value: true, onChanged: (value) {})),
                      SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'I Agree To ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: 'Privacy Policy',
                            style:
                                Theme.of(context).textTheme.bodyMedium!.apply(
                                      color: dark
                                          ? TColors.white
                                          : TColors.primaryColor,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? TColors.white
                                          : TColors.primaryColor,
                                    )),
                        TextSpan(
                            text: ' and ',
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                            text: 'Term & Use',
                            style:
                                Theme.of(context).textTheme.bodyMedium!.apply(
                                      color: dark
                                          ? TColors.white
                                          : TColors.primaryColor,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? TColors.white
                                          : TColors.primaryColor,
                                    )),
                      ]))
                    ],
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => Get.to(() => VerifyEmailScreen()),
                        child: Text('Create Account')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: dark ? TColors.darkgrey : Colors.grey,
                          thickness: 0.5,
                          indent: 60,
                          endIndent: 5,
                        ),
                      ),
                      Text(
                        'or sign in with',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      Expanded(
                        child: Divider(
                          color: dark ? TColors.darkgrey : Colors.grey,
                          thickness: 0.5,
                          indent: 5,
                          endIndent: 60,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: TColors.grey),
                            borderRadius: BorderRadius.circular(100)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image(
                                width: TSizes.iconMd,
                                height: TSizes.iconMd,
                                image: AssetImage(TImages.google))),
                      ),
                      SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: TColors.grey),
                            borderRadius: BorderRadius.circular(100)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image(
                                width: TSizes.iconMd,
                                height: TSizes.iconMd,
                                image: AssetImage(TImages.facebook))),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

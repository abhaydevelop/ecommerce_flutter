import 'package:ecommerce_application/features/authentication/screens/password/forget_password.dart';
import 'package:ecommerce_application/navigation_menu.dart';
import 'package:ecommerce_application/utils/constants/colors.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:ecommerce_application/utils/halper/helper_fuctions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/image_strings.dart';
import '../signup/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false; // Checkbox state

  @override
  Widget build(BuildContext context) {
    final dark = THalperFuncations.isDarkMode(context); // Fixed function name

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // Align content to left
            children: [
              // Logo & Welcome Text
              Image(
                height: 150,
                image: AssetImage(TImages.logo), // Removed redundant ternary
              ),
              Text(
                'Welcome Back,',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.sm),
              Text(
                'Discover limitless choices and unmatched convenience.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              const SizedBox(height: TSizes.spaceBtwSections),

              // Login Form
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: dark ? Colors.white : Colors.black), // Dynamic color
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        filled: true,
                        fillColor: dark ? Colors.black12 : Colors.white, // Background color
                      ),
                    ),

                    const SizedBox(height: TSizes.spaceBtwInputField),
                    TextFormField(
                      obscureText: true, // Security feature
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: 'Password',
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputField / 2),

                    // Remember Me & Forgot Password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: rememberMe,
                              onChanged: (value) {
                                setState(() {
                                  rememberMe = value!;
                                });
                              },
                            ),
                            const Text('Remember Me')
                          ],
                        ),
                        TextButton(
                          onPressed: () => Get.to(() => ForgetPassword()),
                          child: const Text('Forgot Password?'),
                        ),
                      ],
                    ),

                    const SizedBox(height: TSizes.spaceBtwSections),

                    // Sign In Button
                    SizedBox(
                      width: double.infinity, // Ensures full width
                      child: ElevatedButton(
                        onPressed: () => Get.to(() => NavigationMenu()),
                        child: const Text('Sign In'),
                      ),
                    ),

                    const SizedBox(height: TSizes.spaceBtwSections),

                    // Create Account Button
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () => Get.to(() => const SignupScreen()),
                        child: const Text('Create Account'),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwSections),

              // OR Divider
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
                    'or sign up with',
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
          ),
        ),
      ),
    );
  }
}

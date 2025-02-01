import 'package:ecommerce_application/features/authentication/screens/authentication/login.dart';
import 'package:ecommerce_application/utils/constants/image_strings.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:ecommerce_application/utils/halper/helper_fuctions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          /*Get.back() this use for previous screen*/
          // IconButton(onPressed:() => Get.back(), icon: Icon(CupertinoIcons.clear))
          /*Get.offAll use for clear all screen of stack and redirect to required screen*/
          IconButton(onPressed:() => Get.offAll(() => LoginScreen()), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [

            Image(image: AssetImage(TImages.verify_email), width: THalperFuncations.screenWidth() * 0.6,),
            SizedBox(height: TSizes.spaceBtwItems,),
            Text('Verify your email address!', style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            SizedBox(height: TSizes.spaceBtwItems,),

          ],
        ),
        ),
      ),

    );
  }
}

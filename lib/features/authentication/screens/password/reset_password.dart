import 'package:ecommerce_application/utils/constants/image_strings.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/halper/helper_fuctions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back, icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image(image: AssetImage(TImages.onboarding_screen1), width: THalperFuncations.screenWidth() * 0.6,),
              SizedBox(height: TSizes.spaceBtwItems,),
              Text('Password Reset Email Sent', style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtwItems,),
              Text('Your Account Security is our Priority! weve Sent you a Secure Link to Safely Change Your Password and Keep Your Account Protected', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Done')),),

              SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: Text('Reset Email')),),
            ],
          ),
        ),
      ),
    );
  }
}

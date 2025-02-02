import 'package:ecommerce_application/common/styles/spacing_styles.dart';
import 'package:flutter/material.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/halper/helper_fuctions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(image: AssetImage(image), width: THalperFuncations.screenWidth() * 0.6,),
              SizedBox(height: TSizes.spaceBtwItems,),
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtwItems,),
              Text('Abhay@Gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtwItems,),
              Text(subTitle, style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: Text('Continue')),),
            ],
          ),
        ),
      ),
    );
  }
}

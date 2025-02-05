import 'package:ecommerce_application/features/authentication/screens/password/reset_password.dart';
import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:ecommerce_application/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Forget password', style: Theme.of(context).textTheme.headlineMedium,),
          SizedBox(height: TSizes.spaceBtwItems,),
          Text('Dont, worry sometimes people can forget too, enter your email and we will send'),
          SizedBox(height: TSizes.spaceBtwSections * 2,),
          TextFormField(
            decoration: InputDecoration(labelText: 'Email', prefixIcon: Icon(Iconsax.direct_right)),
          ),
          SizedBox(height: TSizes.spaceBtwSections),
          SizedBox(width : double.infinity ,child: ElevatedButton(onPressed: () => Get.off(() => ResetPassword()), child: Text('Submit')))

        ],
      ),
      ),
    );
  }
}

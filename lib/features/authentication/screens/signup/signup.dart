import 'package:ecommerce_application/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
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
                        labelText: 'Email',
                        prefixIcon: Icon(Iconsax.direct)),
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
                      labelText:'Password',
                      prefixIcon: Icon(Iconsax.password_check),
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwInputField,
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/device/device_utility.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: TDeviceUtils.getScreenWidth(context),
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVerticalImageText(image: TImages.onboarding_screen1, title: 'Shoes', onTap: (){},);
          }),
    );
  }
}
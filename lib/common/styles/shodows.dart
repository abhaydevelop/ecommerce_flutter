import 'package:ecommerce_application/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TShadowStyle{
  static final vertialProductShadow = BoxShadow(
    color: TColors.darkgrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
      color: TColors.darkgrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: Offset(0, 2)
  );
}
import 'package:flutter/material.dart';

//Color pallete
const Color bright_blue = Color(0xFF0062ff);
const Color mid_blue = Color(0xFF2b5eac);
const Color marine_blue = Color(0xFF002855);
const Color orange_yellow = Color(0xFFffa300);
const Color light_sky_blue = Color(0xFFdbe2e9);
const Color pale_gold = Color(0xFFfdd26e);
const Color maize = Color(0xFFfed141);
const Color very_light_pink = Color(0xFFf0f0f0);
const Color red = Color(0xFFde0909);
const Color salmon_pink = Color(0xFFfc7175);
const Color brownish_grey = Color(0xFF707070);
const Color black_0_3 = Color(0xFF4d000000);
const Color black_0_6 = Color(0xFF99000000);

//Gradient BG

BoxDecoration gradientBoxDecorationBg = BoxDecoration(
// Box decoration takes a gradient
  gradient: LinearGradient(
// Where the linear gradient begins and ends
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [mid_blue, marine_blue],
  ),
);

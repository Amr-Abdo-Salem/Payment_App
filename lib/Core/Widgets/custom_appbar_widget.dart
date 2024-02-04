import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/Core/Utils/styles.dart';

AppBar buildAppBar({required final String title}) {
  return AppBar(
      leading: Center(
        child: SvgPicture.asset('assets/images/Arrow_1.svg'),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: Styles.tesxtStyle25,
      ));
}

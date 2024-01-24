import 'package:flutter/material.dart';

import '../../../../core/components/components.dart';
import '../../../../core/configs/configs.dart';

class FilterCards extends StatelessWidget {
  const FilterCards({
    super.key, required this.text
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 14.dx, bottom: 13.dy),
      padding: EdgeInsets.symmetric(horizontal: kScreenPadding.dx, vertical: 10.dy),
              decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xffA1A1A1),
              )),
      child: CustomText(
            text: text,
            overflow: TextOverflow.ellipsis,
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xff45403B),
          ),
    );
  }
}
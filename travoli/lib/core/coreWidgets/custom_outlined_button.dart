import 'package:flutter/material.dart';
import 'package:travoli/core/configs/dimensions.dart';

import '../configs/constants.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.outlinedButtonText,
  }) : super(key: key);

  final Function() onPressed;
  final String outlinedButtonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.dx,
      height: 56.dy,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          side: BorderSide.none
        ),
        onPressed: onPressed,
        child: Text(outlinedButtonText,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 16.sp, fontWeight: FontWeight.w500,color: kPrimaryColor
            )),
      ),
    );
  }
}

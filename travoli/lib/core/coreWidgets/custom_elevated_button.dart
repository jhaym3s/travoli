import 'package:flutter/material.dart';
import 'package:travoli/core/configs/dimensions.dart';

import '../configs/constants.dart';


class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    this.color = kPrimaryColor,
    this.textColor = kWhite,
    this.width = 343,
  }) : super(key: key);
  final Function()? onPressed;
  final String buttonText;
  final Color color;
  final Color textColor;
  final double? width;

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: widget.width!.dx,
        height: 56.dy,
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ButtonStyle(
            alignment: Alignment.center,
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return widget.color;
                } else if (states.contains(MaterialState.disabled)) {
                  return widget.color.withOpacity(0.5);
                }
                return widget.color; // Use the component's default.
              },
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
          ),
          child: Text(
            widget.buttonText,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: widget.textColor, fontSize: 14.sp, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travoli/core/configs/dimensions.dart';

import '../coreWidgets/custom_elevated_button.dart';


Future<void> showModalSheet({required BuildContext context, required Widget returnWidget}) {
  return showModalBottomSheet<void>(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
    ),
    isScrollControlled: true,
    //isDismissible: true,
    builder: (BuildContext context) {
      return returnWidget;
    },
  );
}

void showSuccessDialog(
    {required BuildContext context,
    required Function() onPressed,
    required String title,
    required String image,
    required String buttonText,
    required Widget description}) {
  showGeneralDialog(
    context: context,
    barrierLabel: "Success Dialog",
    barrierDismissible: false,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: const Duration(milliseconds: 700),
    pageBuilder: (_, __, ___) {
      return Center(
        child: Container(
          height: 367.dy,
          width: 340.dx,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(4)),
          child: Padding(
            padding: EdgeInsets.all(16.dx),
            child: Column(
              children: [
                Image.asset(
                  image,
                  width: 169.43.dx,
                  height: 159.dy,
                ),
                SpaceY(24.dy),
                Text(title,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff282829))),
                SpaceY(4.dy),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.dx),
                  child: description,
                ),
                SpaceY(24.dy),
                CustomElevatedButton(
                    width: 295, onPressed: onPressed, buttonText: buttonText),
              ],
            ),
          ),
        ),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      Tween<Offset> tween;
      if (anim.status == AnimationStatus.reverse) {
        tween = Tween(begin: const Offset(-1, 0), end: Offset.zero);
      } else {
        tween = Tween(begin: const Offset(1, 0), end: Offset.zero);
      }
      return SlideTransition(
        position: tween.animate(anim),
        child: FadeTransition(
          opacity: anim,
          child: child,
        ),
      );
    },
  );
}

Future<void> dropDownModalSheet(
    {required BuildContext context, required Widget returnWidget}) {
  return showModalBottomSheet<void>(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(12),
        bottom: Radius.circular(12),
      ),
    ),
    isScrollControlled: true,
    //isDismissible: true,
    builder: (BuildContext context) {
      return returnWidget;
    },
  );
}

void customDatePicker({
  required BuildContext context,
  required Function(DateTime) onTap,
}) {
  // showCupertinoModalPopup is a built-in function of the cupertino library
  showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        
            height: 300,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
                initialDateTime: DateTime.now(),
                onDateTimeChanged:
                  onTap
                ),
          ));
}

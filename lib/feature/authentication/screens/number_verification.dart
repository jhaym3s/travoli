import 'package:flutter/material.dart';
import 'package:travoli/core/configs/configs.dart';

import '../../../core/components/components.dart';
import '../../../core/helpers/router/router.dart';
import 'step1.dart';

class NumberVerificationScreen extends StatefulWidget {
  static const routeName = "numberVerificationScreen";
  const NumberVerificationScreen({super.key});

  @override
  State<NumberVerificationScreen> createState() => _NumberVerificationScreenState();
}

class _NumberVerificationScreenState extends State<NumberVerificationScreen> {
  final _pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.dx),
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpaceY(40.dy),
                  CustomText(
                      text: "Phone Number Validation",
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700),
                  SpaceY(4.dy),
                  CustomText(
                    text:
                        "Enter the six(6) digits code sent to your phone number. ",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: kSecondaryFontFamily,
                  ),
                  SpaceY(40.dy),
                  CustomPinCodeTextField(controller: _pinController,onComplete: (value){},onSaved: (value){},onSubmitted: (value){},),
                  Center(
                    child: CustomText(
                      text:
                          "2:00 ",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: kSecondaryFontFamily,
                    ),
                  ),
                  SpaceY(16.dy),
                 Center(
                   child: RichText(
                    text: TextSpan(
                      text: 'Didn’t receive code ',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kTextColorsLight, fontSize: 14.sp, fontWeight: FontWeight.w400, fontFamily: kSecondaryFontFamily),
                      children:  <TextSpan>[
                        TextSpan(
                        text: 'Resend code',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: const Color(0xff5C4500), fontSize: 14.sp, fontWeight: FontWeight.w400, fontFamily: kSecondaryFontFamily),),
                      ],
                    ),
                                   ),
                 ),
                  SpaceY(25.dy),
                CustomElevatedButton(onPressed:(){
                  moveToNextScreen(context: context, page: Step1.routeName);
                }, buttonText: "Verify Code"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
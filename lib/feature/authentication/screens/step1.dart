import 'package:flutter/material.dart';
import 'package:travoli/core/configs/configs.dart';
import 'package:travoli/core/helpers/router/router.dart';

import '../../../core/components/components.dart';
import 'step2.dart';

class Step1 extends StatefulWidget {
  static const routeName = "step1";
  const Step1({super.key});

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: 
        SafeArea(
          child: Padding(
             padding: EdgeInsets.symmetric(horizontal: 20.dx),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpaceY(40.dy),
              CustomText(
                      text:
                          "Step 1/2 ",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff45403B),
                    ),
                    SpaceY(16.dy),
                    CustomText(
                        text: "What are you looking for?",
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700),
                    SpaceY(4.dy),
                    CustomText(
                      text:
                          "Let’s get you started with your favorite place or house listing with ease. No fear! You can change this later. ",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: kSecondaryFontFamily,
                    ),
                    SpaceY(24.dy),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xff5C4500))
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(vertical: 22.dy,horizontal: 48.dx),
                            child: Column(
                              children: [
                                Image.asset(AssetsImages.rentHouse,height: 32.dy, width: 32.dx,),
                                SpaceY(8.dy),
                                CustomText(
                              text: "Rent House",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 170.dx, height: 104.dy,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xff5C4500))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AssetsImages.listHouse,height: 32.dy, width: 32.dx,),
                          SpaceY(8.dy),
                          CustomText(
                        text: "List House",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700),
                        ],
                      ),
                    ),
                      ],
                    ),
                 SpaceY(48.dy),
                  CustomElevatedButton(
                    onPressed:(){
                    moveToNextScreen(context: context, page: Step2.routeName);
                  }, 
                  buttonText: "Next Step"),
            ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:travoli/core/configs/configs.dart';

import '../../../../core/components/components.dart';

class HistoryTile extends StatelessWidget {
  const HistoryTile({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7.dx, bottom: 16.dy),
      decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xffE0DFDF),)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 149.dy, width: double.infinity,
           decoration:  const BoxDecoration(
            image:  DecorationImage(
              image:  AssetImage(AssetsImages.onboarding1),
              fit: BoxFit.fill,
          ),
          color: kWhite,
          borderRadius:  BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:  const EdgeInsets.all(9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
          Padding(
             padding:   EdgeInsets.only(bottom: 10.dy),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.dx,vertical: 1.dy),
            decoration: BoxDecoration(
            color: kBlack,
            borderRadius: BorderRadius.circular(3),
                    ),
            child: CustomText(
                  text:"Available",
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: kWhite,
                ),
                 ),
          ),
                  const Icon(Icons.favorite)
                ],
              ),
            ),
              Container(
            padding: EdgeInsets.symmetric(horizontal: 8.dx,vertical: 1.dy),
          decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(3),
        ),
          child: CustomText(
      text:"1/20",
      fontSize: 8.sp,
      fontWeight: FontWeight.w700,
      color: kWhite,
    ),
     ),
          ],
        ),
            ),
          SpaceY(17.5.dy),
          Padding(
    padding:  EdgeInsets.symmetric(horizontal: 10.dx),
    child: CustomText(
      text:"Two bedroom flat",
      overflow: TextOverflow.ellipsis,
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
      color: const Color(0xff100C08),
    ),
                  ),
                  Padding(
    padding:  EdgeInsets.symmetric(horizontal: 10.dx),
    child: CustomText(
      text:"Abuja.",
      overflow: TextOverflow.ellipsis,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      fontFamily: kSecondaryFontFamily,
      color: const Color(0xff100C08),
    ),
                  ),
                  Padding(
    padding:  EdgeInsets.symmetric(horizontal: 10.dx),
    child: CustomText(
      text:"N300,000/month",
      overflow: TextOverflow.ellipsis,
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
      color: const Color(0xff5C4500),
    ),
                  ),
        SpaceY(8.dy),
       const CustomProgressIndicator(progress: 0.6,) ,
       SpaceY(10.dy),          
          ],
        ),
    );
  }
}
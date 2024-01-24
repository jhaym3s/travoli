import 'package:flutter/material.dart';
import 'package:travoli/core/configs/configs.dart';
import 'package:flutter_expandable_text/flutter_expandable_text.dart';

import '../../../../core/components/components.dart';

class HouseDetailScreen extends StatefulWidget {
  static const routeName = "houseDetail";
  const HouseDetailScreen({super.key});

  @override
  State<HouseDetailScreen> createState() => _HouseDetailScreenState();
}

class _HouseDetailScreenState extends State<HouseDetailScreen> {
  List apartmentTypes = [
    "2 Bedroom",
    "103 sq.feet",
    "visitor's toilet",
    "Water supply inside the house",
    "18hrs power supply",
    "Good network connection"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DetailsTile(),
              SpaceY(17.5.dy),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                child: CustomText(
                  text: "Two bedroom flat",
                  overflow: TextOverflow.ellipsis,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff100C08),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                child: CustomText(
                  text: "Abuja.",
                  overflow: TextOverflow.ellipsis,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: kSecondaryFontFamily,
                  color: const Color(0xff45403B),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                child: CustomText(
                  text: "N300,000/month",
                  overflow: TextOverflow.ellipsis,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff5C4500),
                ),
              ),
              SpaceY(19.dy),
              const Divider(
                color: Color(0xffE0DFDF),
              ),
              SpaceY(24.dy),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                child: CustomText(
                  text: "House features and description",
                  overflow: TextOverflow.ellipsis,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: kTextColorsLight,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                child: ExpandableText(
                  "This is an impressive quiet apartment and has recently undergone renovation to create exciting luxury living space. Every room is completely refurnished with kitchens and bathrooms. Well complete with architectural details.",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: kGrey),
                  linkTextStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: kPrimaryColor),
                  readMoreText: 'Read more',
                  readLessText: 'Read less',
                  trim: 3, // You can set the maximum number of lines to display
                ),
              ),
              SpaceY(14.dy),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                child: Wrap(
                  children: apartmentTypes
                      .map((e) => HouseType(
                            houseDetails: e,
                          ))
                      .toList(),
                ),
              ),
              SpaceY(24.dy),
              const HouseTermsButton(),
              SpaceY(24.dy),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                child: CustomText(
                  text: "Owned by",
                  overflow: TextOverflow.ellipsis,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: kTextColorsLight,
                ),
              ),
              SpaceY(8.dy),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 22.5,
                    ),
                    SpaceX(10.dx),
                    CustomText(
                      text: "Salfords Hosusing and Apartments",
                      overflow: TextOverflow.ellipsis,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff45403B),
                    ),
                  ],
                ),
              ),
              SpaceY(30.dy),
              Container(
                margin: EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                alignment: Alignment.center,
                height: 32.dy,
      width: 343.dx,
      decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: kTextColorsLight,
          )),
      child: CustomText(
                      text: "Contact owner",
                      overflow: TextOverflow.ellipsis,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff45403B),
                    ),
              ),
              SpaceY(40.dy),
          CustomElevatedButton(onPressed:(){
                 // moveToNextScreen(context: context, page: NumberVerificationScreen.routeName);
                }, buttonText: "Continue"),
                SpaceY(40.dy),
            ],
          ),
        ),
      ),
    );
  }
}

class HouseTermsButton extends StatelessWidget {
  const HouseTermsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.dx),
      padding: EdgeInsets.symmetric(horizontal: 15.dx),
      height: 48.dy,
      width: double.infinity,
      decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xffE0DFDF),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: "House terms and conditions",
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: kTextColorsLight,
          ),
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}

class HouseType extends StatelessWidget {
  const HouseType({
    super.key,
    required this.houseDetails,
  });
  final String houseDetails;

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: "• $houseDetails ",
      fontSize: 14.sp,
      fontFamily: kSecondaryFontFamily,
      fontWeight: FontWeight.w400,
      color: const Color(0xff45403B),
    );
  }
}

class DetailsTile extends StatelessWidget {
  const DetailsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.dy,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsImages.onboarding1),
          fit: BoxFit.fill,
        ),
        color: kWhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.dy),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.dx, vertical: 1.dy),
                    decoration: BoxDecoration(
                      color: kBlack,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: CustomText(
                      text: "Available",
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
            padding: EdgeInsets.symmetric(horizontal: 8.dx, vertical: 1.dy),
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(3),
            ),
            child: CustomText(
              text: "1/20",
              fontSize: 8.sp,
              fontWeight: FontWeight.w700,
              color: kWhite,
            ),
          ),
        ],
      ),
    );
  }
}

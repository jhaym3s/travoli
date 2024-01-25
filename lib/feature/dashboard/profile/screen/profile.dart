import 'package:flutter/material.dart';

import '../../../../core/components/components.dart';
import '../../../../core/configs/configs.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                          text:"Hi Jhaymes",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff0B0B0B),
                          fontFamily: kSecondaryFontFamily,
                        ),
                SpaceY(32.dx),
                const ProfileOptionButton(images: AssetsImages.profileAdd,text: "List House",borderColor: Color(0xffA1A1A1),),
                SpaceY(32.dx),
                 ProfileOptionButton(images: AssetsImages.inactiveProfile,text: "Profile",borderColor: const Color(0xffA1A1A1).withOpacity(0.1),),
                SpaceY(12.dx),
                 ProfileOptionButton(images: AssetsImages.notification,text: "Notification",borderColor: const Color(0xffA1A1A1).withOpacity(0.1),),
                SpaceY(12.dx),
                 ProfileOptionButton(images: AssetsImages.security,text: "Security",borderColor: const Color(0xffA1A1A1).withOpacity(0.1),),
                SpaceY(12.dx),
                 ProfileOptionButton(images: AssetsImages.helpCenter,text: "Help Center",borderColor: const Color(0xffA1A1A1).withOpacity(0.1),),
                SpaceY(12.dx),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileOptionButton extends StatelessWidget {
  const ProfileOptionButton({
    super.key, required this.images, required this.text, required this.borderColor
  });
  final String images,text;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.dx),
      height: 48.dy,
      width: double.infinity,
      decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: borderColor,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
               Image.asset(images, width: 20.dx, height: 20.dy,),
               SpaceX(8.dx),
              CustomText(
                text: text,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: kTextColorsLight,
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
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
            text: "Logout",
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: kTextColorsLight,
          ),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../../../../core/components/components.dart';
import '../../../../core/configs/configs.dart';
import '../widgets/profile_option_button.dart';

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
                 ProfileOptionButton(images: AssetsImages.activeProfile,text: "Profile",borderColor: const Color(0xffA1A1A1).withOpacity(0.1),),
                SpaceY(12.dx),
                 ProfileOptionButton(images: AssetsImages.notification,text: "Notification",borderColor: const Color(0xffA1A1A1).withOpacity(0.1),),
                SpaceY(12.dx),
                 ProfileOptionButton(images: AssetsImages.security,text: "Security",borderColor: const Color(0xffA1A1A1).withOpacity(0.1),),
                SpaceY(12.dx),
                 GestureDetector(
                  onTap: () {
                    
                  },
                  child: ProfileOptionButton(images: AssetsImages.helpCenter,text: "Help Center",borderColor: const Color(0xffA1A1A1).withOpacity(0.1),)),
                SpaceY(32.dx),
                const LogoutButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


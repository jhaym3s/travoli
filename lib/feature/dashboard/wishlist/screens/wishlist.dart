import 'package:flutter/material.dart';

import '../../../../core/components/components.dart';
import '../../../../core/configs/configs.dart';
import '../../explore/widget/wish_list_tile.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpaceY(24.dy),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
              child: CustomText(
                      text:"Wishlist(20)",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff0B0B0B),
                      fontFamily: kSecondaryFontFamily,
                    ),
            ),
            SpaceY(24.dy),
            Expanded(
              child: ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                        itemBuilder: (context,index){
                        return const WishlistTile(containerWidth: double.infinity,);
                      }),
            )
          ],
        ),
      ),
    );
  }
}
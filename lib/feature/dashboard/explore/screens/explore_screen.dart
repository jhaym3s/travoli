import 'package:flutter/material.dart';
import 'package:travoli/core/configs/configs.dart';
import 'package:travoli/core/helpers/router/router.dart';
import 'package:travoli/feature/dashboard/explore/screens/filter_screen.dart';
import 'package:travoli/feature/dashboard/explore/screens/house_details.dart';
import '../../../../core/components/components.dart';
import '../widget/wish_list_tile.dart';
import '../widget/search_bar.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpaceY(18.dy),
                GestureDetector(
                  onTap: () {
                     moveFromBottomNavBarScreen(context: context, targetScreen: const FilterScreen());
                  },
                  child: const ExploreSearchBar()),
                SpaceY(13.dy),
                const Divider(
                  color:  Color(0xffE0DFDF),
                ),
                SpaceY(13.dy),
                const ExploreInfo(),
                SpaceY(24.dy),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                  child: CustomText(
                    text: "Newly Added",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff0B0B0B),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                  child: CustomText(
                    text:"Recently added houses in your location.",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff45403B),
                    fontFamily: kSecondaryFontFamily,
                  ),
                ),
              SpaceY(16.dy),
              SizedBox(
                height: 240.dy,
                child: ListView.builder(
                  padding: EdgeInsets.only(left: 20.dx),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                  return  GestureDetector(
                    onTap: () {
                      moveFromBottomNavBarScreen(context: context, targetScreen: const HouseDetailScreen());
                    },
                    child: WishlistTile(containerWidth: 202.dx,));
                }),
              ),
               SpaceY(16.dy),
              Padding(
                  padding:  EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                  child: CustomText(
                    text: "Recommendations",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff0B0B0B),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                  child: CustomText(
                    text:"Similar to your house types.",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff45403B),
                    fontFamily: kSecondaryFontFamily,
                  ),
                ),
                SpaceY(16.dy),
                SizedBox(
                  height: kScreenHeight(context)/2,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                    itemBuilder: (context,index){
                    return const WishlistTile(containerWidth: double.infinity,);
                  }),
                ),
            ],
          ),
        ),
      ),
    );
  }
}



class ExploreInfo extends StatelessWidget {
  const ExploreInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.dx),
    padding: EdgeInsets.symmetric(horizontal: 12.dx, vertical: 13.dy),
    height: 62.dy, width: double.infinity,
    decoration: BoxDecoration(
      color: kWhite,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: const Color(0xff5C4500),)
    ),
    child: 
        CustomText(
    text:
        "Keep searching more houses, save houses and get your feed better and ready, Its all within your search.",
    fontSize: 12.sp,
    //overflow: TextOverflow.ellipsis,
    fontWeight: FontWeight.w400,
    softWrap: true,
    color: const Color(0xff45403B),
    fontFamily: kSecondaryFontFamily,
        ),
       
        );
  }
}


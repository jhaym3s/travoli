import 'package:flutter/material.dart';
import 'package:travoli/core/configs/dimensions.dart';
import 'package:travoli/feature/dashboard/explore/widget/search_bar.dart';

import '../../../../core/components/components.dart';
import '../../../../core/configs/configs.dart';
import '../widget/filter_cards.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = "filterScreen";
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List apartmentTypes = [
    "Single room",
    "2 Bedroom",
    "3 Bedroom",
    "5 Bedroom",
    "Duplex",
    "Apartment Complex",
  ];
   List amountRange = [
    "100k -150k",
    "180k- 200k",
    "500k - 1M",
    "3M - 5M",
    "5M - 10M",
    "10M - 20M",
  ];

  final locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpaceY(18.dy),
              const ExploreSearchBar(),
              SpaceY(13.dy),
                const Divider(
                  color:  Color(0xffE0DFDF),
                ),
                SpaceY(24.dy),
                Padding(
                padding: EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                child: CustomText(
                  text: "House type",
                  overflow: TextOverflow.ellipsis,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: kTextColorsLight,
                ),
              ),
               SpaceY(8.dy),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.dx),
                child: Wrap(
                  children: apartmentTypes.map((e) => FilterCards(text: e,)).toList(),
                ),
              ),
              SpaceY(16.dy),
                Padding(
                padding: EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                child: CustomText(
                  text: "Price range",
                  overflow: TextOverflow.ellipsis,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: kTextColorsLight,
                ),
              ),
               SpaceY(8.dy),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.dx),
                child: Wrap(
                  children: amountRange.map((e) => FilterCards(text: e,)).toList(),
                ),
              ),
               SpaceY(11.dy),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScreenPadding.dx),
                child: DropDownTextFormField(
                    hintText: "Abuja",
                    labelText: "Location",
                    controller: locationController,
                    onTap: () {},
                    suffixIcon:const Icon(Icons.keyboard_arrow_down),
                    validator: (value) {
                      return null;
                    },
                  ),
              ),
              SpaceY(20.dy),
               CustomElevatedButton(onPressed:(){
                }, buttonText: "Apply filter"),
                SpaceY(40.dy),

            ],
          ),
        ),
      ),
    );
  }
}


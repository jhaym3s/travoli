import 'package:flutter/material.dart';
import 'package:travoli/core/components/components.dart';
import 'package:travoli/core/configs/configs.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = "signUpScreen";
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.dx),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpaceY(40.dy),
                CustomText(text: "The best home experiences", fontSize: 24.sp, fontWeight: FontWeight.w700),
                SpaceY(4.dy),
                CustomText(text: "Register and let’s connect you to the best accommodation offers in Nigeria.", fontSize: 14.sp, fontWeight: FontWeight.w400, fontFamily: kSecondaryFontFamily,),
                SpaceY(40.dy),
                NormalTextFormField(hintText: "Name", labelText: "Full Name", controller: fullNameController, validator: (String? value){
                  return null;
                }),
                SpaceY(4.dy),
                CustomText(text: "Make sure this name matches what you have on an Official ID.", fontSize: 12.sp, fontWeight: FontWeight.w400, color: const Color(0xffA1A1A1),fontFamily: kSecondaryFontFamily,),
                SpaceY(12.dy),
                NormalTextFormField(hintText: "Email", labelText: "Email Address", controller: emailController, validator: (String? value){
                  return null;
                }),
                 SpaceY(12.dy),
                NormalTextFormField(hintText: "+234 123456789", labelText: "Phone Number", controller: emailController, validator: (String? value){
                  return null;
                }),
                 SpaceY(12.dy),
                PasswordTextFormField(hintText: "*******", labelText: "Password", controller: passwordController, validator: (String? value){
                  return null;
                }, hidePassword: hidePassword, 
                suffixFunction: () { 
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                },),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}
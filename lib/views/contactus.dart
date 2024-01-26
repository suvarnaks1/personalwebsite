import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:webpersonal/globles/app_bottob.dart';
import 'package:webpersonal/globles/app_colors.dart';
import 'package:webpersonal/globles/app_text.dart';
import 'package:webpersonal/globles/constants.dart';
import 'package:webpersonal/helperclass/helperclass.dart';


class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildContactText(),
          Constants.sizedBox(height: 40.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: ' 9747994362'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
         Material(
           borderRadius: BorderRadius.circular(10),
           color: Colors.transparent,
           elevation: 8,
            child :  TextField(
           
            
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: ' suvarnaks2002@gmail.com '),
           ),
         ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: ' 9747994362'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          // Material(
          //   borderRadius: BorderRadius.circular(10),
          //   color: Colors.transparent,
          //   elevation: 8,
          //   child: TextField(
          //     cursorColor: AppColors.white,
          //     style: AppTextStyles.normalStyle(),
          //     decoration: buildInputDecoration(hintText: 'Email Subject'),
          //   ),
          // ),
        //  Constants.sizedBox(height: 20.0),
          // Material(
          //   borderRadius: BorderRadius.circular(10),
          //   color: Colors.transparent,
          //   elevation: 8,
          //   child: TextField(
          //     maxLines: 15,
          //     cursorColor: AppColors.white,
          //     style: AppTextStyles.normalStyle(),
          //     decoration: buildInputDecoration(hintText: ''),
          //   ),
          // ),
          Constants.sizedBox(height: 40.0),
          AppButtons.buildMaterialButton(
              buttonName: 'Thank You', onTap: () {}),
          Constants.sizedBox(height: 30.0),
        ],
      ),
      tablet: buildForm(),
      desktop: buildForm(),
      paddingWidth: size.width * 0.2,
      bgColor: AppColors.bgColor,
    );
  }

  Column buildForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        buildContactText(),
        Constants.sizedBox(height: 40.0),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Phone Number : 9747994362'),
                ),
              ),
            ),
            Constants.sizedBox(width: 20.0),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Email : suvarnaks2002@gmail.com '),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 20.0),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Whatsapp Number : 9747994362'),
                ),
              ),
            ),
            Constants.sizedBox(width: 20.0),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'GitHub Link : suvarnaks1 '),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 20.0),
        // Material(
        //   borderRadius: BorderRadius.circular(10),
        //   color: Colors.transparent,
        //   elevation: 8,
        //   child: TextField(
        //     maxLines: 15,
        //     cursorColor: AppColors.white,
        //     style: AppTextStyles.normalStyle(),
        //     decoration: buildInputDecoration(hintText: 'Your Message'),
        //   ),
        // ),
        Constants.sizedBox(height: 40.0),
        AppButtons.buildMaterialButton(
            buttonName: 'Thank you', onTap: () {}),
        Constants.sizedBox(height: 30.0),
      ],
    );
  }

  FadeInDown buildContactText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Contact ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Me!',
              style: AppTextStyles.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.comfortaaStyle(),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: AppColors.bgColor2,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 16));
  }
}

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:webpersonal/globles/app_assets.dart';
import 'package:webpersonal/globles/app_bottob.dart';
import 'package:webpersonal/globles/app_colors.dart';
import 'package:webpersonal/globles/app_text.dart';

import 'package:webpersonal/globles/constants.dart';
import 'package:webpersonal/helperclass/helperclass.dart';


class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildAboutMeContents(),
          Constants.sizedBox(height: 35.0),
          buildProfilePicture(),
        ],
      ),
      tablet: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildProfilePicture(),
          Constants.sizedBox(width: 25.0),
          Expanded(child: buildAboutMeContents())
        ],
      ),
      desktop: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildProfilePicture(),
          Constants.sizedBox(width: 25.0),
          Expanded(child: buildAboutMeContents())
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  FadeInRight buildProfilePicture() {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: Container(
          height: 450,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(300),
              color: Colors.transparent,
              image: DecorationImage(
                  image: AssetImage(
                    AppAssets.profile2,
                  ),
                  fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 5,
                    color: const Color.fromARGB(255, 116, 190, 251))
              ])),
















        // child: Image.asset(
        //   AppAssets.profile2,
        //   height: 450,
        //   width: 400,
        // ),
      
    );
  }

  Column buildAboutMeContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInRight(
          duration: const Duration(milliseconds: 1200),
          child: RichText(
            text: TextSpan(
              text: 'About ',
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
        ),
        Constants.sizedBox(height: 6.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Flutter Developer!',
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 8.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Text(
           'Hello there! I am Suvarna ks, a passionate software engineer and dedicated Flutter developer . With a deep love for turning ideas into reality through '
           'code, I thrive on creating elegant and efficient solutions to complex problems.My journey in the world of software development began Edapt. Since then, Ive honed my skills in various technologies, and my focus shifted towards mobile app development, with Flutter being my weapon of choice.'
           'As a Flutter developer, I specialize in building beautiful, cross-platform applications that not only meet but exceed client expectations. I bring creativity and functionality together, ensuring a seamless user experience on both iOS and Android platforms.',
            style: AppTextStyles.normalStyle(),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButtons.buildMaterialButton(
              onTap: () {}, buttonName: 'Read More'),
        )
      ],
    );
  }
}

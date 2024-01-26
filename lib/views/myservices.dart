import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:webpersonal/globles/app_assets.dart';
import 'package:webpersonal/globles/app_bottob.dart';
import 'package:webpersonal/globles/app_colors.dart';
import 'package:webpersonal/globles/app_text.dart';
import 'package:webpersonal/globles/constants.dart';
import 'package:webpersonal/helperclass/helperclass.dart';



class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false, isGraphic = false, isDataAnalyst = false;

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isApp = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'App Development',
              asset: AppAssets.code,
              hover: isApp,
              text: 'Proficient in using Flutter to create cross-platform mobile applications'
                      ' with a focus on high-quality user interfaces and smooth user experiences.'
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isGraphic = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Firebase',
              asset: AppAssets.brush,
              hover: isGraphic,
              text: 'Firebase is a comprehensive mobile and web development platform provided by Google.' 'It offers a variety of tools and services that developers can leverage to build, deploy, and scale applications more efficiently.'
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isDataAnalyst = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Api integration',
              asset: AppAssets.analyst,
              hover: isDataAnalyst,
              text:  'Application Programming Interface, is a set of rules and protocols that allows one software application to interact with another.'' It defines the methods and data formats that applications can use to request and exchange information.'
            ),
          )
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'App Development',
                  asset: AppAssets.code,
                  hover: isApp,
                  text: 'Proficient in using Flutter to create cross-platform mobile applications'
                      ' with a focus on high-quality user interfaces and smooth user experiences.'
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isGraphic = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Firebase',
                  asset: AppAssets.brush,
                  hover: isGraphic,
                  text: 'Firebase is a comprehensive mobile and web development platform provided by Google.' 'It offers a variety of tools and services that developers can leverage to build, deploy, and scale applications more efficiently.'
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 26.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isDataAnalyst = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Api integration',
              asset: AppAssets.analyst,
              hover: isDataAnalyst,
              width: 725.0,
              hoverWidth: 735.0,
              text:  'Application Programming Interface, is a set of rules and protocols that allows one software application to interact with another.'' It defines the methods and data formats that applications can use to request and exchange information.'
            ),
          )
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'App Development',
                  asset: AppAssets.code,
                  hover: isApp,
                  text: 'Proficient in using Flutter to create cross-platform mobile applications'
                      ' with a focus on high-quality user interfaces and smooth user experiences.'
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isGraphic = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Firebase',
                  asset: AppAssets.brush,
                  hover: isGraphic,
                  text: 'Firebase is a comprehensive mobile and web development platform provided by Google.' 'It offers a variety of tools and services that developers can leverage to build, deploy, and scale applications more efficiently.'
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isDataAnalyst = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Api integration',
                  asset: AppAssets.analyst,
                  hover: isDataAnalyst,
                  text:  'Application Programming Interface, is a set of rules and protocols that allows one software application to interact with another.'' It defines the methods and data formats that applications can use to request and exchange information.'
                ),
              )
            ],
          ),
        ],
      ),
      paddingWidth: size.width * 0.04,
      bgColor: AppColors.bgColor,
    );
  }

  FadeInDown buildMyServicesText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'My ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Skills',
              style: AppTextStyles.headingStyles(
                  fontSize: 30.0, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String asset,
    required bool hover,
    double width = 350,
    double hoverWidth = 360,
    //text
    required String text,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: hover ? hoverWidth : width,
      height: hover ? 390 : 380,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        border:
            hover ? Border.all(color: AppColors.themeColor, width: 3) : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            asset,
            width: 50,
            height: 50,
            color: AppColors.themeColor,
          ),
          Constants.sizedBox(height: 30.0),
          Text(
            title,
            style: AppTextStyles.montserratStyle(
                color: Colors.white, fontSize: 22.0),
          ),
          Constants.sizedBox(height: 12.0),
          Text(
            text,
            // 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'
            // ' The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
            style: AppTextStyles.normalStyle(fontSize: 14.0),
            textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 20.0),
          AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
        ],
      ),
    );
  }
}

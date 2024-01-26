import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:webpersonal/globles/app_assets.dart';
import 'package:webpersonal/globles/app_colors.dart';
import 'package:webpersonal/globles/app_text.dart';
import 'package:webpersonal/globles/constants.dart';
import 'package:webpersonal/helperclass/helperclass.dart';


class MyPortfolio extends StatefulWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}
class ProjectDetails{
  final String imagePath;
  final String title;
  final String description;


  ProjectDetails({required this.imagePath,
    required this.title,
  required this.description,
  });

}




class _MyPortfolioState extends State<MyPortfolio> {




  final onH0verEffect = Matrix4.identity()..scale(1.0);

  List images = <String>[
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
  ];

  //
   List<ProjectDetails> projects = [
    ProjectDetails(
      imagePath: AppAssets.work1,
      title: 'Todo App',
      description: 'I will be completing a ToDo app utilizing Firebase.'' The app will include functionalities such as a login page, an add task page, options for editing and deleting tasks, a splash screen, and a visually appealing user interface',
    ),
    ProjectDetails(
      imagePath: AppAssets.work2,
      title: 'Chat APP',
      description: 'I will be completing a group chat app . The apps functionalities will include a login page, individual chat, group chat, and an exceptionally designed user interface.',
    ),
    ProjectDetails(
      imagePath: AppAssets.work1,
      title: 'E commerce app',
      description: 'I will develop an e-commerce app employing the Provider pattern and integrating APIs for seamless functionality and a professional user experience.',
    ),
    ProjectDetails(
      imagePath: AppAssets.work2,
      title: 'Blood Donation app',
      description: 'I will complete a blood donation app with a well-designed user interface, incorporating key functionalities such as blood group assignment and the ability to add personal phone numbers.',
    ),
    ProjectDetails(
      imagePath: AppAssets.work1,
      title: 'Todo App',
      description: 'I will complete a Todo app utilizing SharedPreferences for data storage, implementing a user-friendly and visually appealing UI. The app will feature functionalities such as task addition, editing, and updating.',
    ),
    ProjectDetails(
      imagePath: AppAssets.work2,
      title: 'My Personal website',
      description: 'I will be complete my personal website using Flutter, ensuring a top-notch user interface for an engaging and visually appealing experience.',
    ),
    // Add more projects as needed
  ];

  var hoveredIndex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildProjectText(),
          Constants.sizedBox(height: 40.0),
          buildProjectGridView(crossAxisCount: 1)
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildProjectText(),
          Constants.sizedBox(height: 40.0),
          buildProjectGridView(crossAxisCount: 2)
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildProjectText(),
          Constants.sizedBox(height: 40.0),
          buildProjectGridView(crossAxisCount: 3),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  GridView buildProjectGridView({required int crossAxisCount}) {
    return GridView.builder(
      itemCount: images.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisExtent:400, 
       // 280,
        mainAxisSpacing: 24,
        crossAxisSpacing: 24,
      ),
      itemBuilder: (context, index) {
        var project = projects[index];
        return FadeInUpBig(
          duration: const Duration(milliseconds: 1600),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                if (value) {
                  hoveredIndex = index;
                } else {
                  hoveredIndex = null;
                }
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(project.imagePath), fit: BoxFit.fill),
                  ),
                ),
                Visibility(
                  visible: index == hoveredIndex,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    transform: index == hoveredIndex ? onH0verEffect : null,
                    curve: Curves.easeIn,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [
                            AppColors.themeColor.withOpacity(1.0),
                            AppColors.themeColor.withOpacity(0.9),
                            AppColors.themeColor.withOpacity(0.8),
                            AppColors.themeColor.withOpacity(0.6),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                    child: Column(
                      children: [
                        Text(
                       project.title,
                          style: AppTextStyles.montserratStyle(
                              color: Colors.black87, fontSize: 20),
                        ),
                        Constants.sizedBox(height: 10.0),
                        Text(project.description,
                          style:
                              AppTextStyles.normalStyle(color: Colors.black87),
                          textAlign: TextAlign.center,
                        ),
                        Constants.sizedBox(height: 10.0),
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            AppAssets.share,
                            width: 25,
                            height: 25,
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  FadeInDown buildProjectText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Latest ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Projects',
              style: AppTextStyles.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }
}

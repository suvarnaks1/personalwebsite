import 'package:flutter/material.dart';
import 'package:webpersonal/globles/app_assets.dart';



class ProfileAnimation extends StatefulWidget {
  const ProfileAnimation({Key? key}) : super(key: key);

  @override
  _ProfileAnimationState createState() => _ProfileAnimationState();
}

class _ProfileAnimationState extends State<ProfileAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);

    _animation = Tween(begin: const Offset(0, 0.05), end: const Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Container(
          height: 450,
          width: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(300),
              color: Colors.transparent,
              image: DecorationImage(
                  image: AssetImage(
                    AppAssets.profile1,
                  ),
                  fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 5,
                    color: const Color.fromARGB(255, 116, 190, 251))
              ])),
      // child: Image.asset(
      //   AppAssets.profile1,
      //   // width: 200,
      //   // height: 200,
      //   fit: BoxFit.fill,

      // ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../Utils/theme/colors.dart';
import '../../../Utils/theme/font_style.dart';
import '../View/Components/splash_title.dart';

class CenterAnimatedText extends StatefulWidget {
  
  const CenterAnimatedText({Key? key, }) : super(key: key);

  @override
  _CenterAnimatedTextState createState() => _CenterAnimatedTextState();
}

class _CenterAnimatedTextState extends State<CenterAnimatedText> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    _animation = Tween<Offset>(
      begin: Offset(0.0, 1.0), // Start position (bottom of the screen)
      end: Offset.zero, // End position (top of the screen)
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Align(
        alignment: Alignment.center,
        child: textWidget('Tour Ease', AppColor.splashtitlecolor, TextStyles.fontWeight400,TextStyles.fontSize24 , TextAlign.center, TextStyles.ubuntubold )
      ),
    );
  }
}
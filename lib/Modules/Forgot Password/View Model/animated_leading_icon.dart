import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/Components/custom_sizedbox.dart';
import 'package:tour_easy2/Utils/theme/colors.dart';
import 'package:tour_easy2/Utils/theme/size.dart';


class LeadingIconAnimation extends StatefulWidget {
  
    const LeadingIconAnimation({super.key , });
  @override
  _LeadingIconAnimationState createState() => _LeadingIconAnimationState();
}

class _LeadingIconAnimationState extends State<LeadingIconAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;
  
  

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds:300 ),
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacityAnimation,
    child: IconButton(
        
          icon: Icon(Icons.chevron_left_outlined , color: AppColor.blackcolor,),
        
          onPressed: () {
            Get.back();
          },
        ),
      );
  }
}


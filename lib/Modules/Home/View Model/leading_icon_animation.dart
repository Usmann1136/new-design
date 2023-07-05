
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';


class SecondaryLeadIconAnimation extends StatefulWidget {
 
    const SecondaryLeadIconAnimation({super.key ,  });
  @override
  _SecondaryLeadIconAnimationState createState() => _SecondaryLeadIconAnimationState();
}

class _SecondaryLeadIconAnimationState extends State<SecondaryLeadIconAnimation>
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
        icon: SvgPicture.asset('icons/message-circle.svg' , height: 24, width: 24,),
        onPressed: () {
Get.toNamed(RoutesName.chatscreen);
        },
      ),
    );
  }
}

class AnimatedbellIcon extends StatefulWidget {
 
    const AnimatedbellIcon({super.key ,  });
  @override
  _AnimatedbellIconState createState() => _AnimatedbellIconState();
}

class _AnimatedbellIconState extends State<AnimatedbellIcon>
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
        icon: SvgPicture.asset('icons/bell.svg' , height: 24, width: 24,),
        onPressed: () {
        Get.toNamed(RoutesName.notificationscreen);
        },
      ),
    );
  }
}


import 'package:get/get.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/get_started.dart';

import 'package:tour_easy2/Module/Splash/Onboarding/View/main_page_view.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';

import '../../Module/Splash/Onboarding/View/onboarding1.dart';
import '../../Module/Splash/Onboarding/View/onboarding2.dart';
import '../../Module/Splash/Onboarding/View/onboarding3.dart';
import '../../Module/Splash/View/splash_view.dart';

class AppRoutes {
  static appRoutes() => [
       
       GetPage(
            name: RoutesName.splashScreen,
            page: () => const SplashView(),
        transition: Transition.cupertinoDialog,
            ),
            GetPage(
            name: RoutesName.onboarding1,
            page: () => const Onboarding1Screen(),
            transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)),

             GetPage(
            name: RoutesName.onboarding2,
            page: () => const Onboarding2Screen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)
          ),
            GetPage(
            name: RoutesName.onboarding3,
            page: () => const Onboarding3Screen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)
          ),
            GetPage(
            name: RoutesName.mainpageview,
            page: () => MainPageView(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)
          ),
                GetPage(
            name: RoutesName.finalgetscreen,
            page: () => GetStartedScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)
          ),
      ];
}
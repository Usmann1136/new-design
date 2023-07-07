
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Auth/View/sign_in_screen.dart';
import 'package:tour_easy2/Module/Chat/Inbox/View/inbox.dart';

import 'package:tour_easy2/Module/Chat/View/chat_screen.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/enter_email.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/update_password.dart';
import 'package:tour_easy2/Module/Forgot%20Password/View/verify_email.dart';
import 'package:tour_easy2/Module/Home/View/home.dart';
import 'package:tour_easy2/Module/Listings/Agent%20Profile/View/agent_profile.dart';
import 'package:tour_easy2/Module/Listings/Detail%20Screen/View/completed_detail_screen.dart';
import 'package:tour_easy2/Module/Listings/Detail%20Screen/View/inprogress_detail_screen.dart';
import 'package:tour_easy2/Module/Listings/Detail%20Screen/View/listed_detail_screen.dart';
import 'package:tour_easy2/Module/Listings/View/completed_job.dart';
import 'package:tour_easy2/Module/Listings/View/in_progress.dart';
import 'package:tour_easy2/Module/Listings/View/listed_job.dart';
import 'package:tour_easy2/Module/Notification/Feed%20Back/View/feedback.dart';
import 'package:tour_easy2/Module/Notification/View/notification.dart';
import 'package:tour_easy2/Module/Profile/Add%20Video/View/add_video.dart';
import 'package:tour_easy2/Module/Profile/Edit%20Profile/View/editprofile.dart';
import 'package:tour_easy2/Module/Profile/My%20Videos/View/my_videos.dart';
import 'package:tour_easy2/Module/Profile/Reviews/VIew/review.dart';
import 'package:tour_easy2/Module/Profile/View/profile.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/pending1.dart';
import 'package:tour_easy2/Module/Registration/Pending/View/pending3.dart';
import 'package:tour_easy2/Module/Registration/View/registration_screen.dart';
import 'package:tour_easy2/Module/Side%20menu-Settings/Contact%20Us/View/contact_us.dart';
import 'package:tour_easy2/Module/Side%20menu-Settings/Terms%20And%20Condition/View/privacy_policy.dart';
import 'package:tour_easy2/Module/Side%20menu-Settings/Terms%20And%20Condition/View/termandcondition.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/get_started.dart';
import 'package:tour_easy2/Module/Splash/Onboarding/View/main_page_view.dart';
import 'package:tour_easy2/Module/Wallet/Add/View/add_bank.dart';
import 'package:tour_easy2/Module/Wallet/Add/View/add_card.dart';
import 'package:tour_easy2/Module/Wallet/Amount/View/amount.dart';
import 'package:tour_easy2/Module/Wallet/Top%20Up/View/top_amountscreen.dart';
import 'package:tour_easy2/Module/Wallet/Top%20Up/View/topup_screen.dart';
import 'package:tour_easy2/Module/Wallet/View/wallet.dart';
import 'package:tour_easy2/Module/Wallet/Withdraw/View/withdrawfromyourbank.dart';
import 'package:tour_easy2/Module/Wallet/Withdraw/View/withdrawpayment.dart';
import 'package:tour_easy2/Utils/routes/routes_name.dart';
import '../../Module/Add Listing/Brief/View/brief.dart';
import '../../Module/Add Listing/Location/View/house_location.dart';
import '../../Module/Add Listing/Pin On Map/View/pin_on_map.dart';
import '../../Module/Add Listing/View/add_listing.dart';
import '../../Module/Auth/View/sign_up_screen.dart';
import '../../Module/Chat/Inbox/View/inbox2.dart';
import '../../Module/Listings/View/listingscreen.dart';


import '../../Module/Registration/Pending/View/pending2.dart';
import '../../Module/Registration/Pending/View/pending4.dart';
import '../../Module/Splash/Onboarding/View/onboarding1.dart';
import '../../Module/Splash/Onboarding/View/onboarding2.dart';
import '../../Module/Splash/Onboarding/View/onboarding3.dart';
import '../../Module/Splash/View/splash_view.dart';
import '../../Module/Wallet/Amount/View/amountwithdraw.dart';

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
            GetPage(
            name: RoutesName.signinscreen,
            page: () => SignInScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)
          ),
            GetPage(
            name: RoutesName.signupscreen,
            page: () => SignUpScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)
          ),
           GetPage(
            name: RoutesName.enteremailaddresscreen,
            page: () => EnterMailScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)
          ),
           GetPage(
            name: RoutesName.verifyemailaddresscreen,
            page: () => VerifyEmailScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)
          ),
            GetPage(
            name: RoutesName.updatepasswordscreen,
            page: () => UpdatePasswordScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)
          ),
            GetPage(
            name: RoutesName.registrationscreen,
            page: () => RegistrationScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)
          ),
            GetPage(
            name: RoutesName.pendingonescreen,
            page: () => Pending1Screen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)
          ),
            GetPage(
            name: RoutesName.pendingtwoscreen,
            page: () => Pending2Screen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)
          ),
           GetPage(
            name: RoutesName.pendingthreescreen,
            page: () => Pending3Screen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)
          ),
           GetPage(
            name: RoutesName.pendingfourscreen,
            page: () => Pending4Screen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)
          ),
           GetPage(
            name: RoutesName.homescreen,
            page: () => HomeScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250)
          ),
            GetPage(
            name: RoutesName.listingscreen,
            page: () => ListingScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
          GetPage(
            name: RoutesName.listedjobscreen,
            page: () => ListedJob(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
            GetPage(
            name: RoutesName.inprogressjobscreen,
            page: () => InProgressJob(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
             GetPage(
            name: RoutesName.completejobscreen,
            page: () => CompletedJob(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
            GetPage(
            name: RoutesName.listedjobdetailscreen,
            page: () => ListedJobDetalScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
            GetPage(
            name: RoutesName.inprogressjobdetailscreen,
            page: () => InProgressJobDetailScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
             GetPage(
            name: RoutesName.completejobdetailscreen,
            page: () => CompletedJobDetailScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
                       GetPage(
            name: RoutesName.agentprofilescreen,
            page: () => AgentProfileScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
            GetPage(
            name: RoutesName.addlistingscreen,
            page: () => AddListingScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
            GetPage(
            name: RoutesName.briefscreen,
            page: () => BriefScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
                      GetPage(
            name: RoutesName.houselocationscreen
            ,
            page: () => HouseLocationScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
                                GetPage(
            name: RoutesName.pinonmapscreen
            ,
            page: () => PinOnMapScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
           GetPage(
            name: RoutesName.walletscreen
            ,
            page: () => WalletScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
          GetPage(
            name: RoutesName.amountscreen
            ,
            page: () => AmountScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
            GetPage(
            name: RoutesName.topupscreen
            ,
            page: () => TopUpScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
           GetPage(
            name: RoutesName.addcardscreen
            ,
            page: () => AddCardScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
             GetPage(
            name: RoutesName.topupamountscreen
            ,
            page: () => TopUpAmountScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
            GetPage(
            name: RoutesName.withdrawamountscreen
            ,
            page: () => WithdrawAmountScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
            GetPage(
            name: RoutesName.withdrawfromyourbankscreen
            ,
            page: () => WithdrawFromYourAccountScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
                      GetPage(
            name: RoutesName.addbankscreen
            ,
            page: () => AddBankScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
        GetPage(
            name: RoutesName.withdrawyourpaymentscreen,
            page: () => WithdrawPaymentScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
           GetPage(
            name: RoutesName.profilescreen
            ,
            page: () => ProfileScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
           GetPage(
            name: RoutesName.editprofilescreen
            ,
            page: () => EditProfilScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
           ),
             GetPage(
            name: RoutesName.reviewscreen
            ,
            page: () =>ReviewScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
           GetPage(
            name: RoutesName.myvideoscreen
            ,
            page: () =>MyVideosScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
          GetPage(
            name: RoutesName.addvideoscreen
            ,
            page: () =>AddVideoScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
          GetPage(
            name: RoutesName.contactusscreen
            ,
            page: () =>ContactUsScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
          GetPage(
            name: RoutesName.termandconditionsscreen
            ,
            page: () =>TermAndCondition(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
          GetPage(
            name: RoutesName.privacypolicyscreen
            ,
            page: () =>PrivacyPolicyScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
           GetPage(
            name: RoutesName.notificationscreen
            ,
            page: () =>NotificationScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
            GetPage(
            name: RoutesName.feedbackscreen
            ,
            page: () =>FeedBackScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
           GetPage(
            name: RoutesName.chatscreen
            ,
            page: () =>ChatScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
           GetPage(
            name: RoutesName.inboxscreen
            ,
            page: () =>InboxScreen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
          
           GetPage(
            name: RoutesName.inbox2screen
            ,
            page: () =>Inbox2Screen(),
              transition: Transition.cupertinoDialog,
            transitionDuration: const Duration(milliseconds: 250),
          ),
      ];
}

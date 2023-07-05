import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_easy2/Module/Add%20Listing/View/add_listing.dart';
import 'package:tour_easy2/Module/Listings/View/listingscreen.dart';
import 'package:tour_easy2/Module/Profile/View/profile.dart';
import 'package:tour_easy2/Module/Wallet/View/wallet.dart';


import '../Home Page/View/home_page.dart';

class HomePageController extends GetxController {
  RxInt pageIndex = 0.obs;

  final List<Widget> pages = [
   const HomePage(),
    const ListingScreen(),
   const AddListingScreen(),
     const WalletScreen(),
    const ProfileScreen(),
  ];

   changePageIndex(int index) {
    pageIndex.value = index;
  }
}
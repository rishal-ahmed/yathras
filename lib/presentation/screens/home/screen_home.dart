import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:yathras/core/constant/colors.dart';
import 'package:yathras/core/constant/sizes.dart';
import 'package:yathras/presentation/screens/home/widgets/cities_widget.dart';
import 'package:yathras/presentation/screens/home/widgets/deal_and_offers_widget.dart';
import 'package:yathras/presentation/screens/home/widgets/hotels_widget.dart';
import 'package:yathras/presentation/screens/home/widgets/offer_card_widget.dart';
import 'package:yathras/presentation/screens/home/widgets/safety_widget.dart';
import 'package:yathras/presentation/screens/home/widgets/search_field_widget.dart';

class ScreenHome extends ConsumerWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yathras'),
        backgroundColor: kAppBarColor,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.wallet)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //========== Search Field ==========
              const SearchFieldWidget(),
              kHeight10,

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  children: [
                    //========== Cities Field ==========
                    SizedBox(height: 20.h, child: const CitiesWidget()),
                    const Divider(height: 0),
                    kHeight10,
                    //========== Offer Field ==========
                    const OfferCardWidget(),
                    kHeight10,
                    //========== Hotels Field ==========
                    SizedBox(height: 30.h, child: const HotelsWidget()),
                    kHeight10,
                    const Divider(height: 0),
                    kHeight10,

                    //========== Deals & Offers Field ==========
                    SizedBox(height: 20.h, child: const DealsAndOffersWidget()),
                    kHeight20,

                    //========== Safety Field ==========
                    SizedBox(height: 23.h, child: const SafetyWidget()),
                    kHeight20,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: kGrey,
        showUnselectedLabels: true,
        unselectedFontSize: 13.sp,
        selectedFontSize: 13.sp,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email_outlined,
            ),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.percent_outlined,
            ),
            label: "Offers",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

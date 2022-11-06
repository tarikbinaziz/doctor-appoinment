import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/History/mt_history.dart';
import 'package:maan_doctor_appoinment/ui/Home/mt_home.dart';
import 'package:maan_doctor_appoinment/ui/Pharmacy/mt_pharmacy.dart';
import 'package:maan_doctor_appoinment/ui/Profile/mt_profile.dart';
import '../Cart/mt_cart.dart';

class HomeBottomNavBarScreen extends StatefulWidget {
  const HomeBottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<HomeBottomNavBarScreen> createState() => _HomeBottomNavBarScreenState();
}

class _HomeBottomNavBarScreenState extends State<HomeBottomNavBarScreen> {
  var currentIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    PharmacyScreen(),
    CartScreen(),
    HistoryScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kMainColor,
        unselectedItemColor: kSubTitleColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/pharmacy.png",)), label: "Pharmacy"),
          BottomNavigationBarItem(icon: Icon(IconlyBold.buy), label: " "),
          BottomNavigationBarItem(
              icon: Icon(IconlyBold.document), label: "History"),
          BottomNavigationBarItem(
              icon: Icon(IconlyBold.profile), label: "Profile"),
        ],
      ),
    );
  }
}

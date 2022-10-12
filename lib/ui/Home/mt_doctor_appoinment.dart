import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Home/mt_heart.dart';
import 'package:maan_doctor_appoinment/ui/Home/mt_near_by_hospital.dart';
import 'package:maan_doctor_appoinment/ui/Home/mt_popular_doctor.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../model/mt_doctor_model.dart';
import '../Widgets/elevated_button.dart';
import 'mt_categories.dart';
import 'mt_home.dart';

class DoctorAppoinmentScreen extends StatelessWidget {
   DoctorAppoinmentScreen({Key? key}) : super(key: key);

  List texts = [
    "Heart",
    "Kidney",
    "Dental",
    "Lungs",
    "Heart",
    "Kidney",
    "Dental",
    "Lungs",
    "Heart",
    "Kidney",
    "Dental",
    "Lungs",
  ];

  List colors = [kHeartBgColor, kDentalBgColor, kKedneyBgColor, kLungsBgColor,kHeartBgColor, kDentalBgColor, kKedneyBgColor, kLungsBgColor,kHeartBgColor, kDentalBgColor, kKedneyBgColor, kLungsBgColor,];

  List icons = [
    "assets/icons/kidneys-svgrepo-com 1.png",
    "assets/icons/kidneys.png",
    "assets/icons/dental.png",
    "assets/icons/lunges.png", "assets/icons/kidneys-svgrepo-com 1.png",
    "assets/icons/kidneys.png",
    "assets/icons/dental.png",
    "assets/icons/lunges.png", "assets/icons/kidneys-svgrepo-com 1.png",
    "assets/icons/kidneys.png",
    "assets/icons/dental.png",
    "assets/icons/lunges.png",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        titleSpacing: 0,
        elevation: 0,
        toolbarHeight: 60,
        title: Text(
          "Doctor Appointment",
          style: ktitleTextStyle,
        ),
        leading: BackButton(
          color: kTittleColor,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: kTextFieldBorderColor, width: 1)),
              child: Badge(
                badgeColor: kBadgeColor,
                position: BadgePosition(top: -8, end: -5),
                borderRadius: BorderRadius.circular(40),
                badgeContent: Text(
                  "2",
                  style: TextStyle(color: kLikeWhiteColor),
                ),
                child: Icon(
                  IconlyLight.notification,
                  color: kTittleColor,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(
                      IconlyLight.search,
                      color: kTittleColor,
                    ),
                    hintText: "Search...",
                    hintStyle: TextStyle(color: kSubTittleColor),
                    filled: true,
                    fillColor: kTextFieldColor),
              ),
              SizedBox(
                height: 15,
              ),
              HorizontalList(
                itemCount: 4,
                spacing: 15,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: context.height() / 5.5,
                    width: context.width() / 1.3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/femaledoc.png"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 17.0, left: 10),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Say Hello Doctor",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kLikeWhiteColor,
                                fontSize: 18.0),
                          ),
                          Text(
                            "30% OFF",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kLikeWhiteColor),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            height: 30,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: kLikeWhiteColor),
                            child: Center(
                                child: Text(
                              "See Doctor",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: kTittleColor),
                            )),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: ktitleTextStyle.copyWith(fontSize: 18),
                  ),
                  Text(
                    "View All",
                    style: ksubTitleTextStyle,
                  ).onTap(()=>CategoriesScreen().launch(context)),
                ],
              ),
              HorizontalList(
                itemCount: texts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: context.height() / 7.5,
                    width: context.width() / 4.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colors[index]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage(
                          icons[index],
                        ),color: kLikeWhiteColor,size: 40,),
                        SizedBox(height: 10,),
                        Text(
                          texts[index],
                          style: TextStyle(color: kLikeWhiteColor),
                        ),
                      ],
                    ),
                  );
                },
              ).onTap(()=>HeartScreen().launch(context)),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Doctor",
                    style: ktitleTextStyle.copyWith(fontSize: 18),
                  ),
                  Text(
                    "View All",
                    style: ksubTitleTextStyle,
                  ).onTap(()=>PopularDoctorScreen().launch(context)),
                ],
              ),
              HorizontalList(
                runSpacing: 0.0,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: context.height() / 3.6,
                    width: context.width() / 1.3,
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              color: kSubTittleColor.withOpacity(0.10))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, bottom: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 75,
                              width: context.width(),
                              child: ListTile(
                                isThreeLine: true,
                                contentPadding: EdgeInsets.zero,
                                minLeadingWidth: 0,
                                minVerticalPadding: 0,
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: kWatchColor.withOpacity(0.10),
                                          width: 2)),
                                  child: Badge(
                                      badgeColor: kWatchColor,
                                      position:
                                      BadgePosition.topEnd(top: -2, end: 4),
                                      borderRadius: BorderRadius.circular(40),
                                      badgeContent: Container(
                                        padding: EdgeInsets.zero,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: CircleAvatar(
                                          radius: 40,
                                          backgroundImage: AssetImage(
                                              allDoctors[index].image ?? ''),
                                        ),
                                      )),
                                ),
                                title: Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    allDoctors[index].doctorName ?? '',
                                    style:
                                    TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      allDoctors[index].speciality ?? '',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: kMainColor),
                                    ),
                                    Text(
                                      allDoctors[index].hospital ?? '',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 14,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      IconlyBold.star,
                                      color: kStarColor,
                                      size: 12,
                                    ),
                                    RichText(
                                        text: TextSpan(
                                            text:  allDoctors[index].ratings ?? '',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: kTittleColor),
                                            children: [
                                              WidgetSpan(child: SizedBox(width: 5,)),
                                              TextSpan(
                                                  text:  "(100+ Ratings)",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      color: kSubTittleColor)),
                                            ]))
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Icon(
                                      IconlyBold.timeCircle,
                                      color: kWatchColor,
                                      size: 14,
                                    ),
                                    SizedBox(width: 4,),
                                    RichText(
                                        text: TextSpan(
                                            text:  allDoctors[index].experience ?? '',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: kTittleColor),
                                            children: [
                                              WidgetSpan(child: SizedBox(width: 6,)),
                                              TextSpan(
                                                  text: "Year Exp ",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      color: kSubTittleColor)),
                                            ]))
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            AppButton(
                              text: "Book Now",
                              textColor: kLikeWhiteColor,
                              width: context.width(),
                              padding: EdgeInsets.zero,
                              enableScaleAnimation: false,
                              elevation: 0,
                              color: kMainColor,
                              onTap: () => HomeScreen().launch(context),
                              //  padding: EdgeInsets.zero,
                              shapeBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: allDoctors.length,
                spacing: 0.0,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nearby Hospital",
                    style: ktitleTextStyle,
                  ),
                  Text(
                    "View All",
                    style: ksubTitleTextStyle,
                  ).onTap(()=> NearByHospitalScreen().launch(context)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              HorizontalList(
                itemBuilder: (BuildContext context, int index) {
                  return  Card(
                    elevation: 0,
                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 115,
                          width:210 ,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/hospital.png"),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " Christ Hospital",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    IconlyLight.location,
                                    color: kMainColor,
                                    size: 16,
                                  ),
                                  Text(
                                    "Dhaka Medical, bangladesh",
                                    style: ksubTitleTextStyle,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        IconlyBold.star,
                                        color: kStarColor,
                                        size: 12,
                                      ),
                                      RichText(
                                          text: TextSpan(
                                              text: " 4.5 ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: kTittleColor),
                                              children: [
                                                TextSpan(
                                                    text: "(100+ Ratings) ",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        color: kSubTittleColor)),
                                              ]))
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              AppButton(
                                  color: kMainColor,
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  width: context.width()/1.9 ,
                                  onTap: () {},
                                  shapeBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide.none),
                                  text: "Book Now",
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: kLikeWhiteColor))
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: 4,
                spacing: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

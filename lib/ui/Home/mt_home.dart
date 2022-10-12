import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Home/mt_doctor_appoinment.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../model/mt_doctor_model.dart';
import 'mt_popular_doctor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 0.0,
        title: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: Image(
              image: AssetImage("assets/images/menmini.png"),
            ),
          ),
          title: Text(
            "Current Location",
            style: ksubTitleTextStyle.copyWith(fontSize: 12.0),
          ),
          subtitle: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                IconlyLight.location,
                color: kMainColor,
                size: 20,
              ),
              Text(
                "United States",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: kMainColor),
              ),
              Icon(
                IconlyLight.arrowDown2,
                color: kMainColor,
                size: 20,
              ),
            ],
          ),
          trailing: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: kTextFieldBorderColor, width: 1)),
            child: Badge(
                badgeColor: kBadgeColor,
                borderRadius: BorderRadius.circular(40),
                badgeContent: Text(
                  "2",
                  style: TextStyle(color: kLikeWhiteColor),
                ),
                child: Icon(
                  IconlyLight.notification,
                  color: kTittleColor,
                )),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
                height: 20,
              ),
              Text(
                "Featured Services",
                style: ktitleTextStyle.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: context.height() / 5,
                width: context.width(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/dr_appoinment.png"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 17.0, left: 10),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Doctor Appointment",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kLikeWhiteColor,
                            fontSize: 18.0),
                      ),
                      Text(
                        "Online consultancy of\npopular doctor",
                        style:
                            TextStyle(color: kLikeWhiteColor.withOpacity(0.9)),
                      ),
                    ],
                  ),
                ),
              ).onTap(() => DoctorAppoinmentScreen().launch(context)),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: context.height() / 6.5,
                    width: context.width() / 2.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/diagnostics.png"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Diagnostics",
                            style: ktitleTextStyle.copyWith(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: context.height() / 6.5,
                    width: context.width() / 2.2,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/images/pharmacy.png"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Pharmacy",
                            style: ktitleTextStyle.copyWith(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: context.height() / 6.5,
                    width: context.width() / 2.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/ambulance.png"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Ambulance",
                            style: ktitleTextStyle.copyWith(fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: context.height() / 6.5,
                    width: context.width() / 2.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/nursing.png"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Nursing\nCare",
                            style: ktitleTextStyle.copyWith(fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Doctor",
                    style: ktitleTextStyle.copyWith(fontSize: 18.0),
                  ),
                  Text(
                    "View All",
                    style: ksubTitleTextStyle,
                  ).onTap(() => PopularDoctorScreen().launch(context)),
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
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Diagnostics",
                    style: ktitleTextStyle.copyWith(fontSize: 18),
                  ),
                  Text(
                    "View All",
                    style: ksubTitleTextStyle,
                  ),
                ],
              ),
              HorizontalList(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: context.height() / 2.6,
                    width: context.width() / 1.9,
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          side: BorderSide(
                              color: kSubTittleColor.withOpacity(0.10))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage("assets/images/covid.png"),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Covid RT PCR",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: kTittleColor),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Known as Covid-19 Virus\nQuantitaticve Pcr",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: kSubTittleColor),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "\$6.99",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: kWatchColor),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            AppButton(
                              text: "Book Now",
                              textColor: kLikeWhiteColor,
                              width: context.width(),
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              enableScaleAnimation: false,
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
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Product List",
                    style: ktitleTextStyle,
                  ),
                  Text(
                    "View All",
                    style: ksubTitleTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              HorizontalList(
                  itemCount: 4,
                  spacing: 15,
                  itemBuilder: (_, index) {
                    return SizedBox(
                      height: context.height() / 2.4,
                      width: context.width() / 1.9,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            side: BorderSide(
                                color: kSubTittleColor.withOpacity(0.10))),
                        child: Column(
                          children: [
                            Stack(alignment: Alignment.topLeft, children: [
                              Container(
                                height: context.height() / 5.4,
                                width: context.width() / 2,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/genzyme.png"),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Container(
                                height: 28,
                                width: 66,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                  ),
                                  color: kWatchColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "20% Off",
                                  style: TextStyle(color: kLikeWhiteColor),
                                ),
                              )
                            ]),SizedBox(height: 4,),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Relapsing Multiple\nSclerosis",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          text: "\$6.99",
                                          style: TextStyle(color: kWatchColor),
                                          children: [
                                            WidgetSpan(
                                                // alignment: PlaceholderAlignment.baseline,
                                                // baseline: TextBaseline.alphabetic,
                                                child: SizedBox(width: 10)),
                                        TextSpan(
                                            text: "\$6.99",
                                            style: TextStyle(
                                                color: kSubTittleColor,
                                                decoration:
                                                    TextDecoration.lineThrough))
                                      ])),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  AppButton(
                                    text: "order Now",
                                    textColor: kLikeWhiteColor,
                                    width: context.width(),
                                    elevation: 0,
                                    padding: EdgeInsets.zero,
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
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

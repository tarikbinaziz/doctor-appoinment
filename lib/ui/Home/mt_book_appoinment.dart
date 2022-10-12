import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/ui/Home/Patients%20Details/mt_patients_details.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import '../Styles/style.dart';
import 'mt_home.dart';

class BookAppoinment extends StatefulWidget {
  const BookAppoinment({Key? key}) : super(key: key);

  @override
  State<BookAppoinment> createState() => _BookAppoinmentState();
}

class _BookAppoinmentState extends State<BookAppoinment> {
  var index = 0;

  List day = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
  List number = [10, 11, 12, 13, 14, 15, 16, 17];
  List times = [
    "9.00 am",
    "9.30 am",
    "10.00 am",
    "10.30 am",
    "11.00 am",
    "11.30 am",
    "12.00 am",
    "12.30 pm",
    "1.00 pm",
    "1.30 pm",
    "2.00 pm",
    "2.30 pm",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            color: kTittleColor,
          ),
          title: Text(
            "Book Appointment",
            style: ktitleTextStyle,
          ),
        ),
        bottomNavigationBar:  Padding(
          padding: const EdgeInsets.all(14.0),
          child: AppButton(
            text: "Continue",
            textColor: kLikeWhiteColor,
            elevation: 0,
            color: kMainColor,
            onTap: () => PatientsDetailsScreen().launch(context)
            ,
            //  padding: EdgeInsets.zero,
            shapeBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(6)
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        elevation: 0,
                        enableScaleAnimation: false,
                        onTap: () {},
                        shapeBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide.none),
                        color: kMainColor,
                        text: "Online",
                        textStyle: TextStyle(
                            color: kElevatedButtonTextColor,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: AppButton(
                        elevation: 0,
                        enableScaleAnimation: false,
                        onTap: () {},
                        shapeBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: kMainColor)),
                        text: "hospital",
                        textStyle: TextStyle(
                            color: kMainColor, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: context.width(),
                decoration: BoxDecoration(
                    color: kbigContainerColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "12 July, 2022",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: Colors.black),
                        ),
                        HorizontalList(
                            itemCount: day.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: kSubTittleColor.withOpacity(0.10)),
                                  borderRadius: BorderRadius.circular(6.0),
                                  color: kLikeWhiteColor,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      day[index],
                                      style: TextStyle(
                                          color: kSubTittleColor,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      number[index].toString(),
                                      style: TextStyle(
                                          color: kSubTittleColor,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              );
                            }),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Available Time",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: kSubTittleColor.withOpacity(0.10)),
                                borderRadius: BorderRadius.circular(6.0),
                                color: kLikeWhiteColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.sunny,
                                    color: kSubTittleColor,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Morning",
                                    style: TextStyle(
                                        color: kSubTittleColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: kSubTittleColor.withOpacity(0.10)),
                                borderRadius: BorderRadius.circular(6.0),
                                color: kLikeWhiteColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ImageIcon(
                                    AssetImage(
                                        "assets/images/afternoonicon.png"),
                                    color: kSubTittleColor,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Afternoon",
                                    style: TextStyle(
                                        color: kSubTittleColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: kSubTittleColor.withOpacity(0.10)),
                                borderRadius: BorderRadius.circular(6.0),
                                color: kLikeWhiteColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ImageIcon(
                                    AssetImage("assets/images/eveningicon.png"),
                                    color: kSubTittleColor,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Evening",
                                    style: TextStyle(
                                        color: kSubTittleColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: times.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 6,
                                    mainAxisSpacing: 6,
                                childAspectRatio: 2
                                ),
                            itemBuilder: (_, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: kSubTittleColor.withOpacity(0.10)),
                                  borderRadius: BorderRadius.circular(6.0),
                                  color: kLikeWhiteColor,
                                ),
                                child: Center(
                                  child: Text(
                                    times[index],
                                    style: TextStyle(
                                        color: kSubTittleColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              );
                            }),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Consultation Fees",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: kSubTittleColor.withOpacity(0.10)),
                            borderRadius: BorderRadius.circular(8.0),
                            color: kLikeWhiteColor,
                          ),
                          child: ListTile(
                            leading: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kPhoneContainerColor),
                              child: ImageIcon(
                                AssetImage("assets/images/phone.png"),
                                color: kMainColor,
                              ),
                            ),
                            title: Text(
                              "Messaging",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            trailing: Text(
                              "\$5",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: kSubTittleColor.withOpacity(0.10)),
                            borderRadius: BorderRadius.circular(8.0),
                            color: kLikeWhiteColor,
                          ),
                          child: ListTile(
                            leading: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kMessageContainerColor),
                              child: ImageIcon(
                                AssetImage("assets/images/massege.png"),
                                color: kKedneyBgColor,
                              ),
                            ),
                            title: Text(
                              "Voice call",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            trailing: Text(
                              "\$10",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kKedneyBgColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: kSubTittleColor.withOpacity(0.10)),
                            borderRadius: BorderRadius.circular(8.0),
                            color: kLikeWhiteColor,
                          ),
                          child: ListTile(
                            leading: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kVideoCallContainerColor),
                              child: ImageIcon(
                                AssetImage("assets/images/video_call.png"),
                                color: kWatchColor,
                              ),
                            ),
                            title: Text(
                              "Video Call",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            trailing: Text(
                              "\$15",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kWatchColor),
                            ),
                          ),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

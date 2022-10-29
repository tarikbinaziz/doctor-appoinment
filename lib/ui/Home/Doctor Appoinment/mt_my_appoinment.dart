import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../../../model/mt_doctor_model.dart';
import '../../Styles/style.dart';
import 'mt_doctor_details.dart';

class MyAppoinmentScreen extends StatefulWidget {
  const MyAppoinmentScreen({Key? key}) : super(key: key);

  @override
  State<MyAppoinmentScreen> createState() => _MyAppoinmentScreenState();
}

class _MyAppoinmentScreenState extends State<MyAppoinmentScreen> {
  List icons = [
    "assets/images/video2.png",
    "assets/images/phone.png",
    "assets/images/massege.png"
  ];
  List calls = ["Video call-", "Voice call-", "Message-"];
  List conditions = ["Accepted", 'In Progress', "Cancel"];
  List colors = [kWatchColor, kStarColor, kBadgeColor];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: kTitleColor,
        ),
        title: Text(
          "My Appointments",
          style: ktitleTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
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
                      text: "Upcoming",
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
                      text: "Past",
                      textStyle: TextStyle(
                          color: kMainColor, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: kbigContainerColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today - 12 July 2022",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: kSubTitleColor),
                    ),
                    SizedBox(height: 12,),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: calls.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Card(
                            elevation: 0,
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                    color: kSubTitleColor.withOpacity(0.10))),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(46),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                allDoctors[index].image ?? ''),
                                            fit: BoxFit.fill)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        allDoctors[index].doctorName ?? '',
                                        style:
                                            TextStyle(fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 4,),
                                      Text(
                                        allDoctors[index].speciality ?? '',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: kMainColor),
                                      ),
                                      SizedBox(height: 4,),
                                      Text(
                                        "25 May 22 - 10:00 AM",
                                        style: ksubTitleTextStyle,
                                      ),
                                      SizedBox(height: 3,),
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6.0),
                                            decoration: BoxDecoration(
                                                color: kMainColor.withOpacity(0.1),
                                                shape: BoxShape.circle),
                                            child:  ImageIcon(AssetImage(icons[index]),color: kMainColor,size: 10,)

                                            ),
                                          SizedBox(width: 6,),
                                          RichText(
                                              text: TextSpan(
                                                  text: calls[index],
                                                  style: TextStyle(
                                                      color: kTitleColor),
                                                  children: [
                                                    WidgetSpan(child: SizedBox(width: 6,)),
                                                    TextSpan(
                                                      text: conditions[index],
                                                      style: TextStyle(
                                                          color: colors[index]),
                                                    )
                                                  ])),
                                          ]),





                                ],

                              ),
    ]).onTap(() => DoctorDetailsScreen().launch(context)),
                            )
                          ),
                        );},
                    ),
                    SizedBox(height: 24,),
                    Text(
                      "Yesterday - 11 July 2022",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: kSubTitleColor),
                    ),
                    SizedBox(height: 12,),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: calls.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Card(
                              elevation: 0,
                              margin: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      color: kSubTitleColor.withOpacity(0.10))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(46),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    allDoctors[index].image ?? ''),
                                                fit: BoxFit.fill)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            allDoctors[index].doctorName ?? '',
                                            style:
                                            TextStyle(fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: 4,),
                                          Text(
                                            allDoctors[index].speciality ?? '',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: kMainColor),
                                          ),
                                          SizedBox(height: 4,),
                                          Text(
                                            "25 May 22 - 10:00 AM",
                                            style: ksubTitleTextStyle,
                                          ),
                                          SizedBox(height: 3,),
                                          Row(
                                              children: [
                                                Container(
                                                    padding: EdgeInsets.all(6.0),
                                                    decoration: BoxDecoration(
                                                        color: kMainColor.withOpacity(0.1),
                                                        shape: BoxShape.circle),
                                                    child:  ImageIcon(AssetImage(icons[index]),color: kMainColor,size: 10,)

                                                ),
                                                SizedBox(width: 6,),
                                                RichText(
                                                    text: TextSpan(
                                                        text: calls[index],
                                                        style: TextStyle(
                                                            color: kTitleColor),
                                                        children: [
                                                          WidgetSpan(child: SizedBox(width: 6,)),
                                                          TextSpan(
                                                            text: conditions[index],
                                                            style: TextStyle(
                                                                color: colors[index]),
                                                          )
                                                        ])),
                                              ]),





                                        ],

                                      ),
                                    ]).onTap(() => DoctorDetailsScreen().launch(context)),
                              )
                          ),
                        );},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

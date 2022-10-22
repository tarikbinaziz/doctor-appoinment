import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../../../model/mt_doctor_model.dart';
import '../../Styles/style.dart';

class OnlineAppoinmentDetails extends StatelessWidget {
  OnlineAppoinmentDetails({Key? key}) : super(key: key);

  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: kTittleColor,
        ),
        title: Text(
          "Online Appointments Details",
          style: ktitleTextStyle,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(allDoctors[index].image ?? ''),
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
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        "National Institute of Cancer Research & Hospital, (Cancer Specialist)",
                        maxLines: 2,
                        style: TextStyle(color: kSubTittleColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            decoration: BoxDecoration(
                color: kbigContainerColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: kWatchColor),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: kLikeWhiteColor, shape: BoxShape.circle),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/images/video_call.png",
                              scale: 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Video call",
                          style: TextStyle(color: kLikeWhiteColor),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        IconlyBold.timeCircle,
                        color: kSubTittleColor,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Visit time",
                            style: TextStyle(
                                color: kTittleColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Afternoon",
                            style: TextStyle(
                              color: kSubTittleColor,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Today - 12 July, 2022",
                            style: TextStyle(
                              color: kSubTittleColor,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "01:00 PM",
                            style: TextStyle(
                              color: kMainColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        IconlyBold.profile,
                        color: kSubTittleColor,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Patient information",
                            style: TextStyle(
                                color: kTittleColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Text(
                                "Name",
                                style: ksubTitleTextStyle,
                              ),
                              SizedBox(width: 24,),
                              Text(
                                ":",
                                style: ksubTitleTextStyle,
                              ), SizedBox(width: 24,),
                              Text(
                                "Guy Hawkins",
                                style: ktitleTextStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                "Age",
                                style: ksubTitleTextStyle,
                              ), SizedBox(width: 36,),
                              Text(
                                ":",
                                style: ksubTitleTextStyle,
                              ), SizedBox(width: 24,),
                              Text(
                                "25",
                                style: ktitleTextStyle,
                              ),
                            ],
                          ), SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                "Gender",
                                style: ksubTitleTextStyle,
                              ), SizedBox(width: 15,),
                              Text(
                                ":",
                                style: ksubTitleTextStyle,
                              ), SizedBox(width: 24,),
                              Text(
                                "Male",
                                style: ktitleTextStyle,
                              ),
                            ],
                          ), SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                "Phone",
                                style: ksubTitleTextStyle,
                              ), SizedBox(width: 22,),
                              Text(
                                ":",
                                style: ksubTitleTextStyle,
                              ), SizedBox(width: 24,),
                              Text(
                                "01641586586",
                                style: ktitleTextStyle,
                              ),
                            ],
                          ),

                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

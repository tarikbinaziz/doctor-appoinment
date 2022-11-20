import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/ui/Profile/Excerisze%20Reminder/mt_outdoor_running.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../const/const.dart';
import '../../Styles/style.dart';

class ExcersizeReminderScreen extends StatefulWidget {
  const ExcersizeReminderScreen({Key? key}) : super(key: key);

  @override
  State<ExcersizeReminderScreen> createState() =>
      _ExcersizeReminderScreenState();
}

class _ExcersizeReminderScreenState extends State<ExcersizeReminderScreen> {
  DateTime _selectedValue = DateTime.now();
  List images = [
    "assets/images/outdoor-run.png",
    "assets/images/trademil.png",
    "assets/images/cycle.png",
    "assets/images/outdoor-run.png",
  ];
  List names=["Outdoor Running","Indoor Runing","Cycling","Outdoor Running",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kLikeWhiteColor,
        elevation: 0,
        leading: BackButton(
          color: kTitleColor,
        ),
        title: Text(
          "Excerisze Reminder",
          style: ktitleTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "12 July, 2022",
                style:
                    TextStyle(color: kTitleColor, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DatePicker(
                DateTime.now(),
                height: 100,
                initialSelectedDate: DateTime.now(),
                selectionColor: kMainColor,
                selectedTextColor: Colors.white,
                onDateChange: (date) {
                  // New date selected
                  setState(() {
                    _selectedValue = date;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: kContainerBgColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kExcerSizeBannerColor),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/running.png"),
                              radius: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Your Indoor Running Done",
                                  style: TextStyle(
                                      color: kLikeWhiteColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Total 30 Days (26 days Completed)",
                                  style: TextStyle(
                                    color: kLikeWhiteColor,
                                  ),
                                ),
                                LinearPercentIndicator(
                                  width: 200,
                                  padding: EdgeInsets.zero,
                                  lineHeight: 4.0,
                                  percent: 0.5,
                                  trailing: Text(
                                    "50.0%",
                                    style: TextStyle(color: kLikeWhiteColor),
                                  ),
                                  linearStrokeCap: LinearStrokeCap.roundAll,
                                  backgroundColor:
                                      kLikeWhiteColor.withOpacity(0.20),
                                  progressColor: kLikeWhiteColor,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: images.length,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: kLikeWhiteColor),
                              child: Row(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(12),),
                                        image: DecorationImage(
                                            image: AssetImage(images[index]),
                                            fit: BoxFit.fill)),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                names[index],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 10.0),
                                                child: Icon(Icons.check_circle,color: kMainColor,),
                                              )

                                            ],
                                          ),
                                          Text(
                                            "Your Goal 90 days",
                                            style: TextStyle(
                                                color: kSubTitleColor),
                                          ),
                                          Text(
                                            "You have completed 30 Days",
                                            style: TextStyle(
                                                color: kSubTitleColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ).onTap(()=>OutdoorRunningScreen().launch(context)),
                          );
                        }),
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

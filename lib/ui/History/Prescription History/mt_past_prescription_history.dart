import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../../const/const.dart';
import '../../Home/Doctor Appoinment/mt_doctor_details.dart';
import '../../Styles/style.dart';
import '../Diagnostic History/mt_diag_Offline_Appointments_Details.dart';
import 'mt_my_prescription_history.dart';

class PastPrescriptionHistoryScreen extends StatefulWidget {
  const PastPrescriptionHistoryScreen({Key? key}) : super(key: key);

  @override
  State<PastPrescriptionHistoryScreen> createState() =>
      _PastPrescriptionHistoryScreenState();
}

class _PastPrescriptionHistoryScreenState
    extends State<PastPrescriptionHistoryScreen> {

  List conditions = ["Delivered", 'Processed', "Received"];
  List condition = ["Cancel", 'Processed', "Received"];
  List colors = [kWatchColor, kStarColor, kMainColor];
  List color = [kBadgeColor, kStarColor, kMainColor];

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
          "Prescription History",
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
                      onTap: () {
                        MyPrescriptionHistoryScreen().launch(context);
                      },
                      shapeBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(color: kMainColor)),
                      color: kLikeWhiteColor,
                      text: "Upcoming",
                      textStyle: TextStyle(
                          color: kMainColor,
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
                      color: kMainColor,
                      shapeBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(color: kMainColor)),
                      text: "Past",
                      textStyle: TextStyle(
                          color: kLikeWhiteColor, fontWeight: FontWeight.w700),
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
                    SizedBox(
                      height: 12,
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: colors.length,
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
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(35),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(8),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/diagnostics_lab.png'),
                                                  fit: BoxFit.fill)),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Napa Extend Tablet",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("10 Tablets",style: ksubTitleTextStyle,),
                                                  Text("Amount: \$6.99",style: ksubTitleTextStyle,),
                                                ],),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Qty: 01",style: ksubTitleTextStyle,),
                                                  Text("Reschedule",style: TextStyle(color: kMainColor),),
                                                ],),


                                            ],
                                          ),
                                        ),
                                      ])),
                            )).onTap(()=> DiagnosticsOfflineAppoinmentScreen().launch(context));

                      },
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

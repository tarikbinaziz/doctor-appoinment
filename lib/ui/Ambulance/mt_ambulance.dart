import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import 'mt_book_ambulance.dart';


class AmbulanceScreen extends StatelessWidget {
  AmbulanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLikeWhiteColor,
      appBar: AppBar(
        backgroundColor: kLikeWhiteColor,
        elevation: 0,
        leading: BackButton(
          color: kTitleColor,
        ),
        title: Text(
          "Ambulance",
          style: ktitleTextStyle,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: kContainerBgColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    color: kLikeWhiteColor,
                    borderRadius: BorderRadius.circular(6.0)),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 96,
                      decoration: BoxDecoration(
                          color: kGAmbulanceBGColor,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: kSubTitleColor.withOpacity(0.1)),
                          image: const DecorationImage(
                              scale: 2,
                              image: AssetImage("assets/images/general.png"))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "General Ambulance",
                      style: TextStyle(
                          color: kTitleColor, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: kSubTitleColor,
                      ).onTap(()=> BookAmbulanceScreen().launch(context)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    color: kLikeWhiteColor,
                    borderRadius: BorderRadius.circular(6.0)),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 96,
                      decoration: BoxDecoration(
                          color: kIcuAmbulanceBGColor,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: kSubTitleColor.withOpacity(0.1)),
                          image: DecorationImage(
                              scale: 2,
                              image: AssetImage("assets/images/icu.png"))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "ICU Ambulance",
                      style: TextStyle(
                          color: kTitleColor, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: kSubTitleColor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    color: kLikeWhiteColor,
                    borderRadius: BorderRadius.circular(6.0)),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 96,
                      decoration: BoxDecoration(
                          color: kFreegeAmbulanceBGColor,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: kSubTitleColor.withOpacity(0.1)),
                          image: DecorationImage(
                              scale: 2,
                              image: AssetImage("assets/images/freege.png"))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Freezing Ambulance",
                      style: TextStyle(
                          color: kTitleColor, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: kSubTitleColor,
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),

              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Image.asset(
                  "assets/images/all-ambulance.png",
                  width: double.infinity,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/model/mt_doctor_model.dart';
import 'package:maan_doctor_appoinment/ui/Home/mt_doctor_details.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

class PopularDoctorScreen extends StatefulWidget {
  PopularDoctorScreen({Key? key}) : super(key: key);

  @override
  State<PopularDoctorScreen> createState() => _PopularDoctorScreenState();
}

class _PopularDoctorScreenState extends State<PopularDoctorScreen> {
  String selected = "first";

  List tittleList = [
    "All",
    "Cardiology",
    "diabets",
    "Cancer",
    "diabets",
    "Cancer",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Popular Doctor",
            style: ktitleTextStyle,
          ),
          leading: BackButton(
            color: kTittleColor,
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
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
              InkWell(
                onTap: () {
                  setState(() {
                    selected = 'first';
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color:
                          selected == 'first' ? kMainColor : Colors.transparent,
                      border: Border.all(color: kTextFieldBorderColor)),
                  child: Text(
                    "first",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: kSubTittleColor),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: allDoctors.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: context.height() / 3.8,
                      width: context.width(),
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                                color: kSubTittleColor.withOpacity(0.10))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 12.0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 82,
                                    height: 82,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        allDoctors[index].doctorName ?? '',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        allDoctors[index].speciality ?? '',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: kMainColor),
                                      ),
                                      SizedBox(
                                        width: context.width() / 2,
                                        child: Text(
                                          allDoctors[index].hospital ?? '',
                                          maxLines: 2,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      RichText(
                                          text: TextSpan(
                                              text: "Working at: ",
                                              style: TextStyle(
                                                  color: kTittleColor),
                                              children: [
                                            TextSpan(
                                              text:
                                                  "${allDoctors[index].location}" ??
                                                      '',
                                              style: TextStyle(
                                                  color: kSubTittleColor),
                                            )
                                          ]))
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: kStarColor.withOpacity(0.15)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          IconlyBold.star,
                                          color: kStarColor,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          allDoctors[index].ratings ?? '',
                                          style:
                                              TextStyle(color: kSubTittleColor),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "(${allDoctors[index].ratingCount})" ??
                                              '',
                                          style:
                                              TextStyle(color: kSubTittleColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  AppButton(
                                    padding: EdgeInsets.zero,
                                    elevation: 0,
                                    color: kMainColor,
                                    shapeBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide.none),
                                    width: context.width() / 1.7,
                                    text: "Book Now",
                                    textStyle: TextStyle(
                                        color: kLikeWhiteColor,
                                        fontWeight: FontWeight.w700),
                                    onTap: () {},
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ).onTap(() => DoctorDetailsScreen().launch(context)),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

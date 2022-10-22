import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../model/mt_doctor_model.dart';
import 'Book Appoinment/mt_book_appoinment.dart';

class DoctorDetailsScreen extends StatefulWidget {
  const DoctorDetailsScreen({Key? key}) : super(key: key);

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  var index = 0;

  List galleryImages = [
    "assets/images/gimg1.png",
    "assets/images/gimg2.png",
    "assets/images/gimg3.png",
    "assets/images/gimg1.png",
    "assets/images/gimg2.png",
    "assets/images/gimg3.png",
  ];

  List reviewImages = [
    "assets/images/review_man.png",
    "assets/images/review_women.png",
    "assets/images/review_man.png",
    "assets/images/review_women.png",
    "assets/images/review_man.png",
    "assets/images/review_women.png",
    "assets/images/review_man.png",
    "assets/images/review_women.png",
    "assets/images/review_man.png",
    "assets/images/review_women.png",
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
            "Doctor Details",
            style: ktitleTextStyle,
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(

            decoration: BoxDecoration(
                color: kLikeWhiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                 padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: kMainColor.withOpacity(0.10)),
                  child: Icon(
                    IconlyBold.heart,
                    color: kMainColor,
                  ),
                ),
                SizedBox(width: 10,),

                Expanded(
                  child: AppButton(
                    enableScaleAnimation: false,
                    onTap: ()=> BookAppoinment().launch(context),
                    shapeBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide.none),
                    color: kMainColor,
                    text: "Book Appointment",
                    textStyle: TextStyle(color: kElevatedButtonTextColor,fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
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
                                  image:
                                      AssetImage(allDoctors[index].image ?? ''),
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
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: context.width() / 1.5,
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
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: context.width() / 2.2,
                          height: context.height() / 7.7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: kDrContainerColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: kWatchColor),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Image.asset("assets/images/drexp.png"),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "7 Years",
                                    style: ktitleTextStyle,
                                  ),
                                  Text(
                                    "Experiences",
                                    style: ksubTitleTextStyle,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: context.width() / 2.2,
                          height: context.height() / 7.7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: kPatientContainerColor),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: kStarColor),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Image.asset(
                                    "assets/images/drexp.png",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "5,000+",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: kTittleColor),
                                  ),
                                  Text(
                                    "Patient",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: kSubTittleColor),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                decoration: BoxDecoration(
                    color: kbigContainerColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Biography",
                        style: ktitleTextStyle,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        biography,
                        style: ksubTitleTextStyle,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Gallery",
                        style: ktitleTextStyle,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      HorizontalList(
                        itemCount: galleryImages.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              height: context.height() / 5.5,
                              width: context.width() / 3.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image:
                                          AssetImage(galleryImages[index]))));
                        },
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Availability",
                        style: ktitleTextStyle,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Mon - Fri 09.00 AM - 08.00 PM",
                        style: ksubTitleTextStyle,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Review (${allDoctors[index].ratingCount})",
                            style: ktitleTextStyle,
                          ),
                          Row(
                            children: [
                              Icon(
                                IconlyBold.star,
                                size: 12,
                                color: kStarColor,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "${allDoctors[index].ratings}",
                                style: ktitleTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: reviewImages.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: context.height() / 5,
                            width: context.width(),
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      color:
                                          kSubTittleColor.withOpacity(0.10))),
                              child: Column(
                                children: [
                                  ListTile(
                                    minVerticalPadding: 0,
                                    leading: CircleAvatar(
                                      radius: 20,
                                      backgroundImage:
                                          AssetImage(reviewImages[index]),
                                    ),
                                    title: Text(
                                      "Jerome Bell",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: kTittleColor),
                                    ),
                                    subtitle: RatingBarWidget(
                                      size: 14,
                                      onRatingChanged: (value) {},
                                      itemCount: 5,
                                      rating: 4,
                                      activeColor: kStarColor,
                                      inActiveColor: kStarColor,
                                    ),
                                    trailing: Text(
                                      "31 Min Ago",
                                      style: TextStyle(color: kSubTittleColor),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      reviewWomen,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: kSubTittleColor),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

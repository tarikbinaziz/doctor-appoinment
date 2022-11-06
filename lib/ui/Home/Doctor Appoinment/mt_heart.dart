import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../const/const.dart';
import '../../Styles/style.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        titleSpacing: 0,
        elevation: 0,
        title: Text(
          "Heart",
          style: ktitleTextStyle,
        ),
        leading: BackButton(
          color: kTitleColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
          itemBuilder: (BuildContext context, int index) { return SizedBox(
                height: context.height() / 4.5,
                width: context.width(),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: kSubTitleColor.withOpacity(0.10))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(42),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/doctorpro.png")),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dr. Randy Wigham",
                                      style: TextStyle(fontWeight: FontWeight.w700),
                                    ),
                                    RichText(
                                        text: TextSpan(
                                            text:
                                            "National Institute of Cancer Research\n& Hospital,",
                                            style: ksubTitleTextStyle,
                                            children: [
                                              TextSpan(text: " (Heart Specialist)",style: TextStyle(color: kMainColor))
                                            ])),
                                    SizedBox(height: 4,),
                                    RichText(
                                        text: TextSpan(
                                            text:
                                            "Working at: ",
                                            style: TextStyle(color: kTitleColor),
                                            children: [
                                              TextSpan(text: " New York, USA",style: TextStyle(color: kSubTitleColor))
                                            ])),


                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: kStarColor.withOpacity(0.15)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(IconlyBold.star,color: kStarColor,size: 16,),
                                    SizedBox(width: 4,),
                                    Text("4.9 (60)",style: TextStyle(color: kSubTitleColor),),

                                  ],),
                              ),
                              SizedBox(width: 8,),
                              AppButton(
                                padding: EdgeInsets.zero,
                                elevation: 0,
                                color: kMainColor,
                                shapeBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide.none
                                ),
                                width: context.width()/1.7,
                                text: "Book Now",
                                textStyle: TextStyle(color: kLikeWhiteColor,fontWeight: FontWeight.w700),
                                onTap: (){},
                              )

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ); },
                
              ),
            )
          ],
        ),
      ),
    );
  }
}

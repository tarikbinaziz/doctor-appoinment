import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';

class VoiceCallScreen extends StatelessWidget {
  const VoiceCallScreen({Key? key}) : super(key: key);

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
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: kbigContainerColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(height: 60,),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(50),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: kMainColor.withOpacity(0.15)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(40),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: kMainColor.withOpacity(0.30))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/drhand.png"),
                              radius: 30,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Dr. Josiah Toor",
                        style: TextStyle(
                            fontSize: 24,
                            color: kTitleColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Calling...",
                        style: TextStyle(
                            color: kSubTitleColor,
                            ),
                      ),
                      SizedBox(height: 180,),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            elevation: 0,
                            color: kLikeWhiteColor,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                    color: kSubTitleColor.withOpacity(0.10))),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Icon(
                                IconlyBold.voice,
                                color: kMainColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 28,
                          ),
                          Card(
                            elevation: 0,
                            color: kBadgeColor,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide.none),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Icon(
                                Icons.call_end,
                                color: kLikeWhiteColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 28,
                          ),
                          Card(
                            elevation: 0,
                            color: kLikeWhiteColor,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                    color: kSubTitleColor.withOpacity(0.10))),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Icon(
                                IconlyBold.volumeUp,
                                color: kMainColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    //  SizedBox(height: 40,)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

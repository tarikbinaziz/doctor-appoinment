import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';

class MessagingScreen extends StatelessWidget {
  const MessagingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 30,
          elevation: 0,
          leading: BackButton(
            color: kTitleColor,
          ),
          title: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/drhand.png"),
              radius: 20,
            ),
            title: Text(
              "Dr. Josiah Toor",
              style: ktitleTextStyle,
            ),
            subtitle: Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: kWatchColor),
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Online",
                  style: TextStyle(color: kWatchColor),
                )
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  IconlyBold.call,
                  color: kMainColor,
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  IconlyBold.video,
                  color: kMainColor,
                ),
              ],
            ),
          )),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
            color: kLikeWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Expanded(
                child: AppTextField(

                  textFieldType: TextFieldType.NAME,

                  decoration: InputDecoration(
                      filled: true,
                      contentPadding: EdgeInsets.zero,
                      fillColor: kTextFieldColor,
                      hintText: "message...",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide: BorderSide.none),
                      prefixIcon: Icon(IconlyBold.camera)),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: kMainColor),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(IconlyBold.voice,color: kLikeWhiteColor,),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: context.height(),
          decoration: BoxDecoration(
              color: kbigContainerColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/drhand.png"),
                      radius: 20,
                    ),
                    SizedBox(
                      height: 72,
                      child: Card(
                        shape: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            )),
                        shadowColor: kShadowColor.withOpacity(0.5),
                        child: SizedBox(
                          width: 200,
                          child: Center(
                            child: Text(
                              "Hi, dont worry I am here. Let me know your situation now.",
                              textAlign: TextAlign.center,
                              maxLines: 5,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0),
                  child: Text(
                    "09:41 AM",
                    style: ksubTitleTextStyle,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 72,
                      child: Card(
                        shape: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            )),
                        shadowColor: kShadowColor.withOpacity(0.5),
                        child: SizedBox(
                          width: 200,
                          child: Center(
                            child: Text(
                              "Hi, dont worry I am here. Let me know your situation now.",
                              textAlign: TextAlign.center,
                              maxLines: 5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/drhand.png"),
                      radius: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 45.0),
                      child: Image.asset(
                        "assets/images/hand-write.png",
                        width: 144,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';

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
      body: Container(
        decoration: BoxDecoration(
            color: kbigContainerColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(children: [
          Row(children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/drhand.png"),
              radius: 20,
            ),
            Card(shadowColor: kShadowColor.withOpacity(0.5),child: Text("any"),)
          ],)
        ],),
      ),
    );
  }
}

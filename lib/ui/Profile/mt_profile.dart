import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import '../Styles/style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kLikeWhiteColor,
        elevation: 0,
        leading: BackButton(
          color: kTitleColor,
        ),
        title: Text(
          "Profile",
          style: ktitleTextStyle,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 85,
            width: context.width(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/profile-banner.png",),fit: BoxFit.fill)),
            child: Center(
              child: ListTile(
                leading: CircleAvatar(
                 child: Image.asset("assets/images/video_face.png"),
                  radius: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

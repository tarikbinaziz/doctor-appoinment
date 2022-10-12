import 'dart:async';

import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Onboarding/mt_onboarding.dart';
import 'package:nb_utils/nb_utils.dart';

class SplashScreen extends StatefulWidget {
   SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    Timer(Duration(seconds: 2), () => OnBoardingScreen().launch(context,isNewTask: true));

  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: context.height()/2.2,),
            Image.asset("assets/images/logo.png"),
            const Spacer(),
            Text("version",style: TextStyle(fontWeight: FontWeight.w400,color: kTittleColor),),
            Text("1.0.0",style: TextStyle(fontWeight: FontWeight.w700,color: kMainColor),),
          ],
        ),
      ),
    );
  }
}

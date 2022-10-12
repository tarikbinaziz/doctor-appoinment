import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/auth/mt_signin.dart';
import 'package:maan_doctor_appoinment/ui/widgets/elevated_button.dart';
import 'package:maan_doctor_appoinment/ui/widgets/outline_border_button.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Styles/style.dart';

class ChooseARoleScreen extends StatelessWidget {
  const ChooseARoleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image(image: AssetImage('assets/images/logo.png'),height: 100,width: 100,),
              Image.asset(
                "assets/images/all_doctor.png",
                height: context.height() / 2.6,
                width: context.width(),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Choose Your Role",
                style: ktitleTextStyle.copyWith(fontSize: 25),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipi scing elit. Lectus sed ",
                  style: ksubTitleTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AppButton(
                text: "Are you a Doctor?",
                textColor: kMainColor,
                width: context.width(),
                elevation: 0,
                color: kLikeWhiteColor,
                onTap: ()=> SignInScreen().launch(context),
                //  padding: EdgeInsets.zero,
                shapeBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kMainColor),
                    borderRadius: BorderRadius.circular(6)
                ),
              ),

              const SizedBox(
                height: 12,
              ),
             AppButton(
               text: "Are you a Patient?",
               textColor: kLikeWhiteColor,
               width: context.width(),
               elevation: 0,
               color: kMainColor,
               onTap: ()=> SignInScreen().launch(context),
             //  padding: EdgeInsets.zero,
               shapeBorder: OutlineInputBorder(
                 borderSide: BorderSide.none,
                 borderRadius: BorderRadius.circular(6)
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:nb_utils/nb_utils.dart';

class AppElevatedButton extends StatelessWidget {
  String text;
  Function function;

  AppElevatedButton(this.text, this.function);

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: text,
      color: kMainColor,
      onTap: function,
      elevation: 0,
      textStyle: TextStyle(
          color: kElevatedButtonTextColor, fontWeight: FontWeight.bold),
      shapeBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide.none),
    );
  }
}

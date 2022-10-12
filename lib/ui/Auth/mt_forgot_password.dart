
import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/widgets/elevated_button.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Styles/style.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreentate();
}

class _ForgotPasswordScreentate extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
        titleTextStyle: ktitleTextStyle.copyWith(fontSize: 20),
        leading: BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Text(
              signInText,
              style: ksubTitleTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            AppTextField(
                textFieldType: TextFieldType.EMAIL,
                decoration: InputDecoration(
                    label: Text("Email"),
                    labelStyle: TextStyle(color: kTittleColor),
                    hintText: "janecooper@gmail.com",
                    hintStyle: TextStyle(color: kSubTittleColor),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: kTextFieldBorderColor)))),
            SizedBox(
              height: 24,
            ),
            AppElevatedButton("Reset Password", () {}),
          ],
        ),
      ),
    );
  }
}

import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/auth/mt_phone_varification.dart';
import 'package:maan_doctor_appoinment/ui/auth/mt_signin.dart';
import 'package:maan_doctor_appoinment/ui/widgets/elevated_button.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Styles/style.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  Widget _buildDropdownItem(Country country) => Container(
    child: SizedBox(
      width: 80.0,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          SizedBox(
            width: 8.0,
          ),
          Text("+${country.phoneCode}",style: TextStyle(fontSize: 12.0),),
        ],
      ),
    ),
  );
  bool value=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        titleTextStyle: ktitleTextStyle.copyWith(fontSize: 20),
        leading: BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
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
                  textFieldType: TextFieldType.NAME,
                  decoration: InputDecoration(
                      label: Text("Full Name"),
                      labelStyle: TextStyle(color: kTittleColor),
                      hintText: "Jane Cooper",
                      hintStyle: TextStyle(color: kSubTittleColor),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: kTextFieldBorderColor)))),
              SizedBox(
                height: 16,
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
                height: 16,
              ),
              AppTextField(
                  textFieldType: TextFieldType.PASSWORD,
                  decoration: InputDecoration(
                      label: Text("Password"),
                      labelStyle: TextStyle(color: kTittleColor),
                      hintText: "******",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: kTextFieldBorderColor)))),
              SizedBox(
                height: 16,
              ),
              AppTextField(
                textFieldType: TextFieldType.NUMBER,
                decoration: InputDecoration(
                    label: Text("Mobile Number"),
                    labelStyle: TextStyle(color: kTittleColor),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: kTextFieldBorderColor)),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: CountryPickerDropdown(
                        initialValue: 'AR',
                        iconSize: 18.0,
                        itemBuilder: _buildDropdownItem,
                        priorityList:[
                          CountryPickerUtils.getCountryByIsoCode('GB'),
                          CountryPickerUtils.getCountryByIsoCode('CN'),
                        ],
                        sortComparator: (Country a, Country b) => a.isoCode.compareTo(b.isoCode),
                        onValuePicked: (Country country) {
                          print("${country.name}");
                        },
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Checkbox(
                    value: this.value,
                    onChanged: ( value){
                      setState(() {
                        this.value=value!;
                      });
                    },
                    side: BorderSide(color: kSubTittleColor),
                    checkColor: kLikeWhiteColor,
                    activeColor: kMainColor,
                  ),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                        text: "I have read and agree to the ",
                        style: TextStyle(color: kSubTittleColor),
                        children: [
                          TextSpan(
                              text: "privacy policy",
                              style: TextStyle(color: kMainColor)),
                          TextSpan(
                              text: " &", style: TextStyle(color: kTittleColor)),
                          TextSpan(
                              text: "\nTermes & Conditions",
                              style: TextStyle(color: kMainColor)),
                        ]),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              AppElevatedButton("Sign Up", ()=> PhoneVarificationScreen().launch(context)),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(color: kSubTittleColor),
                    children: [
                      TextSpan(
                          text: "SIGN IN", style: TextStyle(color: kMainColor)),
                    ]),
              ).onTap(()=> SignInScreen().launch(context))
            ],
          ),
        ),
      ),
    );
  }
}

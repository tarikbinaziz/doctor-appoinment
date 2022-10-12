import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/auth/mt_signup.dart';
import 'package:maan_doctor_appoinment/ui/widgets/elevated_button.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Home/mt_home.dart';
import '../Styles/style.dart';
import 'mt_forgot_password.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        titleTextStyle: ktitleTextStyle.copyWith(fontSize: 20),
        leading: BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                signInText,
                style: ksubTitleTextStyle,
              ),
              SizedBox(
                height: 35,
              ),
              AppTextField(
                textFieldType: TextFieldType.NUMBER,
                decoration: InputDecoration(
                    labelText: "Mobile Number",
                    labelStyle: TextStyle(color: kTittleColor),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hintText: "Mobile Number",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: kTextFieldBorderColor)),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 6.0),
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
              SizedBox(
                height: 16,
              ),
              AppTextField(
                  textFieldType: TextFieldType.PASSWORD,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      label: Text("Password"),
                      labelStyle: TextStyle(color: kTittleColor),
                      hintText: "******",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: kTextFieldBorderColor)))),
              SizedBox(
                height: 13,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: ksubTitleTextStyle,
                ),
              ).onTap(()=>ForgotPasswordScreen().launch(context)),
              SizedBox(
                height: 25,
              ),
              AppButton(
                text: "Sign In",
                textColor: kLikeWhiteColor,
                width: context.width(),
                elevation: 0,
                color: kMainColor,
                onTap: ()=> HomeScreen().launch(context),
                //  padding: EdgeInsets.zero,
                shapeBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(6)
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(
                text: "Dont’t have an account? ",
                style: TextStyle(color: kSubTittleColor),
                    children: [
                   TextSpan(
                  text: "SIGN UP",
                      style: TextStyle(color: kMainColor)),
                    ]
              ),

              ).onTap(()=> SignUpScreen().launch(context))
            ],
          ),
        ),
      ),
    );
  }
}

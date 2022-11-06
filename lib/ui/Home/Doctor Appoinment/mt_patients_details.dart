import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../const/const.dart';
import '../../Styles/style.dart';
import 'mt_payment.dart';

class PatientsDetailsScreen extends StatefulWidget {
  const PatientsDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PatientsDetailsScreen> createState() => _PatientsDetailsScreenState();
}

class _PatientsDetailsScreenState extends State<PatientsDetailsScreen> {
  String dropdownvalue = 'Male';
  String agedropdownValue = "10+";
  var items = [
    "Male",
    "Female",
  ];

  var ageNumbers = [
    "10+",
    "15+",
    "20+",
    "25+",
    "30+",
    "35+",
    "40+",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            color: kTitleColor,
          ),
          title: Text(
            "Patient’s Details",
            style: ktitleTextStyle,
          ),
        ),
        bottomNavigationBar:  Padding(
          padding: const EdgeInsets.all(14.0),
          child: AppButton(
            text: "Continue",
            textColor: kLikeWhiteColor,
            elevation: 0,
            color: kMainColor,
            onTap: () => PaymentScreen().launch(context)
            ,
            //  padding: EdgeInsets.zero,
            shapeBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(6)
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(

            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                AppTextField(
                    textFieldType: TextFieldType.NAME,
                    decoration: InputDecoration(
                        label: Text("Full Name"),
                        labelStyle: TextStyle(color: kTitleColor),
                        hintText: "Enter your full name",
                        hintStyle: TextStyle(color: kSubTitleColor),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kTextFieldBorderColor, width: 1)))),
                SizedBox(
                  height: 15,
                ),
                AppTextField(
                    textFieldType: TextFieldType.NUMBER,
                    decoration: InputDecoration(
                        label: Text("Phone Number"),
                        labelStyle: TextStyle(color: kTitleColor),
                        hintText: "Enter your phone number",
                        hintStyle: TextStyle(color: kSubTitleColor),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kTextFieldBorderColor, width: 1)))),
                SizedBox(
                  height: 15,
                ),
                AppTextField(
                    textFieldType: TextFieldType.EMAIL,
                    decoration: InputDecoration(
                        label: Text("Email (optional)"),
                        labelStyle: TextStyle(color: kTitleColor),
                        hintText: "Enter your email",
                        hintStyle: TextStyle(color: kSubTitleColor),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kTextFieldBorderColor, width: 1)))),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                          textFieldType: TextFieldType.OTHER,
                          suffix: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      items = value! as List<String>;
                                    });
                                  }),
                            ),
                          ),
                          decoration: InputDecoration(
                              label: const Text("Gender"),
                              labelStyle: TextStyle(color: kTitleColor),
                              hintText: "Select gender",
                              hintStyle: TextStyle(color: kSubTitleColor),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: kTextFieldBorderColor, width: 1)))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: AppTextField(
                          textFieldType: TextFieldType.OTHER,
                          suffix: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                  items: ageNumbers.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      agedropdownValue = value!;
                                    });
                                  }),
                            ),
                          ),
                          decoration: InputDecoration(
                              label: Text("Age"),
                              labelStyle: TextStyle(color: kTitleColor),
                              hintText: "Select age",
                              hintStyle: TextStyle(color: kSubTitleColor),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: kTextFieldBorderColor, width: 1)))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                AppTextField(
                    textFieldType: TextFieldType.MULTILINE,
                    decoration: InputDecoration(
                        label: Text("Write Your Problem"),
                        labelStyle: TextStyle(color: kTitleColor),
                        hintText: "Tell doctor about your problem",
                        hintStyle: TextStyle(color: kSubTitleColor),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kTextFieldBorderColor, width: 1)))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/ui/Home/Appoinment/mt_my_appoinment.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../const/const.dart';
import '../../Auth/mt_signin.dart';
import '../../Styles/style.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List nameImage = [
    "assets/images/visa.png",
    "assets/images/bkash.png",
    "assets/images/paypal.png",
    "assets/images/stripe.png",
    "assets/images/Cash On Delivery.png"
  ];
  List logo = [
    "assets/images/credit.png",
    "assets/images/bkash_logo.png",
    "assets/images/paypal_logo.png",
    "assets/images/stripe_logo.png",
    "assets/images/cod_logo.png"
  ];

  List miniContainerColors = [
    kStarColor.withOpacity(0.10),
    kBkashContainerColor.withOpacity(0.10),
    kPaypalContainerColor.withOpacity(0.10),
    kStripeContainerColor.withOpacity(0.10),
    kWatchColor.withOpacity(0.10)
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: kTittleColor,
        ),
        title: Text(
          "Book Appointment",
          style: ktitleTextStyle,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(14.0),
        child: AppButton(
          text: "Payment Now",
          textColor: kLikeWhiteColor,
          elevation: 0,
          color: kMainColor,
          onTap: () => showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)), //this right here
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Image.asset("assets/images/hand_board.png",width: 124,),
                            ),
                            Text(
                              "Congratulation!",
                              style: TextStyle(fontWeight: FontWeight.bold,color: kTittleColor,fontSize: 28),
                            ),
                            SizedBox(height: 12,),
                            RichText(
                              textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: "Your appointment booking completed.",
                                    style: ksubTitleTextStyle,
                                    children: [
                                      TextSpan(
                                          text: " Dr. Josiah Toor ",
                                          style: TextStyle(color: kMainColor)),
                                      TextSpan(
                                        text: " will video call",
                                        style: TextStyle(color: kSubTittleColor),
                                      )
                                    ])),
                            SizedBox(height: 28,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: kBadgeColor,
                                          ),
                                          Text(
                                            "Guy Hawkins",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500, color: kTittleColor),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Icon(
                                            IconlyBold.calendar,
                                            color: kMainColor,
                                          ),
                                          Text(
                                            "12 July 2022",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500, color: kTittleColor),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(

                                        children: [
                                          Icon(
                                            IconlyBold.wallet,
                                            color: kWatchColor,
                                          ),
                                          Text(
                                            "\$15 USD",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500, color: kTittleColor),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(

                                        children: [
                                          Icon(
                                            IconlyBold.timeCircle,
                                            color: kStarColor,
                                          ),
                                          Text(
                                            "01:00 PM",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500, color: kTittleColor),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 24,),
                            AppButton(
                              text: "See Appointment",
                              textColor: kLikeWhiteColor,
                              width:context.width(),
                              enableScaleAnimation: false,
                              padding: EdgeInsets.zero,
                              elevation: 0,
                              color: kMainColor,
                              onTap: () => MyAppoinmentScreen().launch(context),
                              //  padding: EdgeInsets.zero,
                              shapeBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            AppButton(
                              text: "Back to Home",
                              width:context.width(),
                              padding: EdgeInsets.zero,
                              textColor: kMainColor,
                              enableScaleAnimation: false,
                              elevation: 0,
                              color: kLikeWhiteColor,
                              onTap: () {},
                              //  padding: EdgeInsets.zero,
                              shapeBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: kMainColor),
                                  borderRadius: BorderRadius.circular(6)),
                            ),

                          ],
                        ),
                      ),
                    ));
              }),
          //  padding: EdgeInsets.zero,
          shapeBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: '3754 9000 0800 9735',
              expiryDate: '05/31',
              cardHolderName: "Ibne Riead",
              cvvCode: '23/12',
              bankName: 'VISA',
              height: 210,
              backgroundImage: "assets/images/card_bg.png",
              showBackView: false,
              obscureCardNumber: true,
              isHolderNameVisible: true,
              isChipVisible: false,
              cardBgColor: Colors.white,
              isSwipeGestureEnabled: true,
              onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {
                creditCardBrand = CreditCardBrand(CardType.visa);
              },
            ),
            Container(
              decoration: BoxDecoration(
                  color: kbigContainerColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select Payment Method",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Text(
                          "Change",
                          style: TextStyle(color: kBadgeColor),
                        )
                      ],
                    ),
                    HorizontalList(
                      itemCount: nameImage.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 56,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: kLikeWhiteColor),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: miniContainerColors[index]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      logo[index],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    nameImage[index],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    CreditCardForm(
                      formKey: formKey, // Required
                      onCreditCardModelChange:
                          (CreditCardModel data) {}, // Required
                      themeColor: Colors.red,
                      obscureCvv: false,
                      obscureNumber: false,
                      isHolderNameVisible: false,
                      isCardNumberVisible: true,
                      isExpiryDateVisible: true,
                      cardNumberDecoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                        hintText: 'Enter card holder name',
                        labelStyle: TextStyle(color: kTittleColor),
                        hintStyle: TextStyle(color: kSubTittleColor),
                      ),
                      expiryDateDecoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Expired Date',
                        hintText: 'DD - MM - YYYY',
                        labelStyle: TextStyle(color: kTittleColor),
                        hintStyle: TextStyle(color: kSubTittleColor),
                      ),
                      cvvCodeDecoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'CVV',
                        hintText: 'Enter CVV number',
                        labelStyle: TextStyle(color: kTittleColor),
                        hintStyle: TextStyle(color: kSubTittleColor),
                      ),
                      cardNumber: '3754 9000 0800 9735',
                      expiryDate: '05/31',
                      cardHolderName: "Ibne Riead",
                      cvvCode: '23/12',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

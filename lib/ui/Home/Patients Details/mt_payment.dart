import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import '../../../const/const.dart';
import '../../Styles/style.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Column(children: [

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
          CreditCardForm(
            formKey: formKey, // Required
            onCreditCardModelChange: (CreditCardModel data) {}, // Required
            themeColor: Colors.red,
            obscureCvv: false,
            obscureNumber: false,
            isHolderNameVisible: false,
            isCardNumberVisible: true,
            isExpiryDateVisible: true,
            cardNumberDecoration:  InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
              hintText: 'Enter card holder name',
              labelStyle: TextStyle(color: kTittleColor),
              hintStyle:TextStyle(color: kSubTittleColor),
            ),
            expiryDateDecoration:  InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Expired Date',
              hintText: 'DD - MM - YYYY',
              labelStyle: TextStyle(color: kTittleColor),
              hintStyle:TextStyle(color: kSubTittleColor),
            ),
            cvvCodeDecoration:  InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'CVV',
              hintText: 'Enter CVV number',
              labelStyle: TextStyle(color: kTittleColor),
              hintStyle:TextStyle(color: kSubTittleColor),
            ),
           cardNumber: '3754 9000 0800 9735',
            expiryDate: '05/31',
            cardHolderName: "Ibne Riead",
            cvvCode: '23/12',
          ),
        ],),
      ),
    );
  }
}

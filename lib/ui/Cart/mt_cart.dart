import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:nb_utils/nb_utils.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Text(
                "Cart",
                style: TextStyle(color: kTittleColor),
              ),

            ],
          ),
        ));
    // body: SingleChildScrollView(
    //   child: Padding(
    //     padding: const EdgeInsets.all(10.0),
    //     child: Column(
    //       children: [
    //         ListView.builder(
    //           shrinkWrap: true,
    //           physics: const NeverScrollableScrollPhysics(),
    //           itemCount: 8,
    //           itemBuilder: (BuildContext context, int index) {
    //             return Slidable(
    //               key: const ValueKey(1),
    //               endActionPane: ActionPane(
    //                 motion: const ScrollMotion(),
    //                 //   dismissible: DismissiblePane(onDismissed: () => toast('Item Deleted')),
    //                 children: [
    //                   Container(
    //                     padding: const EdgeInsets.all(8),
    //                     decoration: BoxDecoration(shape: BoxShape.circle, color: kMiniContainerColor.withOpacity(0.1)),
    //                     child: const Icon(
    //                       FeatherIcons.heart,
    //                       color: kMainColor,
    //                     ),
    //                   ),
    //                   const SizedBox(
    //                     width: 20,
    //                   ),
    //                   Container(
    //                     padding: const EdgeInsets.all(8),
    //                     decoration: BoxDecoration(shape: BoxShape.circle, color: kMiniContainerColor.withOpacity(0.1)),
    //                     child: const Icon(
    //                       FeatherIcons.trash2,
    //                       color: kMainColor,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               child: Padding(
    //                 padding: const EdgeInsets.only(bottom: 10.0),
    //                 child: Container(
    //                   padding: const EdgeInsets.all(10.0),
    //                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), border: Border.all(color: kBorderColor.withOpacity(0.4))),
    //                   child: Row(children: [
    //                     Container(
    //                         width: 80,
    //                         height: 74,
    //                         decoration: const BoxDecoration(
    //                           color: Colors.amberAccent,
    //                           borderRadius: BorderRadius.all(Radius.circular(6)),
    //                           image: DecorationImage(
    //                               image: AssetImage(
    //                                 "assets/images/bigburger.png",
    //                               ),
    //                               fit: BoxFit.cover),
    //                         )),
    //                     Padding(
    //                       padding: const EdgeInsets.only(
    //                         left: 8.0,
    //                       ),
    //                       child: Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           const Text(
    //                             "Chicken burger first delivery",
    //                             style: TextStyle(
    //                               fontWeight: FontWeight.w500,
    //                             ),
    //                           ),
    //                           const SizedBox(
    //                             height: 4,
    //                           ),
    //                           Row(
    //                             children: [
    //                               const Text(
    //                                 "\$5.00",
    //                                 style: TextStyle(color: kTruckColor, fontWeight: FontWeight.w500),
    //                               ),
    //                               const SizedBox(
    //                                 width: 70,
    //                               ),
    //                               Padding(
    //                                 padding: const EdgeInsets.only(left: 25.0),
    //                                 child: Row(
    //                                   children: [
    //                                     Container(
    //                                       decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: kButtonFBGColor, width: 1)),
    //                                       child: const Padding(
    //                                         padding: EdgeInsets.all(4.0),
    //                                         child: Icon(
    //                                           FeatherIcons.minus,
    //                                           color: kSubTitleColor,
    //                                         ),
    //                                       ),
    //                                     ).onTap(() {
    //                                       setState(() {
    //                                         value > 1 ? value-- : value = 1;
    //                                       });
    //                                     }),
    //                                     const SizedBox(
    //                                       width: 16,
    //                                     ),
    //                                     Text(
    //                                       value.toString(),
    //                                       style: const TextStyle(color: kTitleColor, fontWeight: FontWeight.w400),
    //                                     ),
    //                                     const SizedBox(
    //                                       width: 16,
    //                                     ),
    //                                     Container(
    //                                       decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: kDividerColor, width: 1)),
    //                                       child: const Padding(
    //                                         padding: EdgeInsets.all(4.0),
    //                                         child: Icon(
    //                                           FeatherIcons.plus,
    //                                           color: kSubTitleColor,
    //                                         ),
    //                                       ),
    //                                     ).onTap(() {
    //                                       setState(() {
    //                                         value++;
    //                                       });
    //                                     }),
    //                                   ],
    //                                 ),
    //                               )
    //                             ],
    //                           ),
    //                           const SizedBox(
    //                             height: 4,
    //                           ),
    //                         ],
    //                       ),
    //                     )
    //                   ]),
    //                 ),
    //               ),
    //             );
    //           },
    //         ),
    //       ],
    //     ),
    //   ),
    // ));
  }}



import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:maan_doctor_appoinment/ui/Cart/mt_cart.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class MedicineDetailsScreen extends StatefulWidget {
  const MedicineDetailsScreen({Key? key}) : super(key: key);

  @override
  State<MedicineDetailsScreen> createState() => _MedicineDetailsScreenState();
}

class _MedicineDetailsScreenState extends State<MedicineDetailsScreen> {
  String dropdownvalue = '10 Tablets';
  int val = 0;
  bool isExpanded = false;
  var items = [
    '10 Tablets',
    '20 Tablets',
    '1 box',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: BackButton(
            color: kTitleColor,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kLikeWhiteColor,
                    border: Border.all(color: kTextFieldBorderColor, width: 2)),
                child: Badge(
                    badgeColor: kBadgeColor,
                    position: BadgePosition(top: -9, end: -4),
                    padding: EdgeInsets.all(3),
                    borderRadius: BorderRadius.circular(40),
                    badgeContent: Text(
                      "2",
                      style: TextStyle(color: kLikeWhiteColor),
                    ),
                    child: Icon(
                      FeatherIcons.shoppingCart,
                      color: kTitleColor,
                      size: 18,
                    )),
              ),
            ),
          ]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color:kLikeWhiteColor,
            boxShadow: [
              BoxShadow(
                color: kSubTitleColor.withOpacity(0.4),
                blurRadius: 1,
                // Shadow position
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        height: 80,
        padding: EdgeInsets.all(16),
        child: AppButton(
          text: "View Cart (2)",
          textColor: kLikeWhiteColor,
          elevation: 0,
          enableScaleAnimation: false,
          padding: EdgeInsets.zero,
          color: kMainColor,
          onTap: () => CartScreen().launch(context),
          //  padding: EdgeInsets.zero,
          shapeBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6)),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: 270,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/napa-big.png'),
                    fit: BoxFit.fill)),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.61,
              expand: true,
              builder: (_, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: kbigContainerColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Maan Pharmacy Ltd.",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kTitleColor,
                              fontSize: 20),
                        ),
                        Text("(Paracetamol)", style: ksubTitleTextStyle),
                        SizedBox(
                          height: 6,
                        ),
                        RichText(
                            text: TextSpan(
                                text: '\$6.99',
                                style: TextStyle(
                                    color: kSubTitleColor,
                                    fontWeight: FontWeight.w600),
                                children: [
                              WidgetSpan(
                                  child: SizedBox(
                                width: 7,
                              )),
                              TextSpan(
                                text: '\$7.99',
                                style: TextStyle(
                                    color: kSubTitleColor,
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.w400),
                              ),
                              WidgetSpan(
                                  child: SizedBox(
                                width: 7,
                              )),
                              TextSpan(
                                  text: "Get 10% OFF",
                                  style: TextStyle(
                                      color: kWatchColor,
                                      fontWeight: FontWeight.w600))
                            ])),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: DropdownButton(
                                  value: dropdownvalue,
                                  isExpanded: true,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      child: Text(items),
                                      value: items,
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      dropdownvalue = value!;
                                    });
                                  }),
                            ),
                            SizedBox(
                              width: 84,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kTextFieldBorderColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(
                                      FeatherIcons.minus,
                                      color: kSubTitleColor,
                                    ),
                                  ),
                                ).onTap(() {
                                  setState(() {
                                    val > 1 ? val-- : val = 1;
                                  });
                                }),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("$val"),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kMainColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(
                                      FeatherIcons.plus,
                                      color: kLikeWhiteColor,
                                    ),
                                  ),
                                ).onTap(() {
                                  setState(() {
                                    val++;
                                  });
                                }),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
          DraggableScrollableSheet(
              maxChildSize: 1,
              initialChildSize: 0.35,
              expand: true,
              builder: (_, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: kLikeWhiteColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Column(
                    children: [
                      ExpansionTile(
                        collapsedTextColor: kTitleColor,
                        collapsedIconColor: kTitleColor,
                        childrenPadding: EdgeInsets.all(8),
                        tilePadding: EdgeInsets.zero,
                        title: Text(
                          "Uses of Napa Extend",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        trailing: Icon(
                          isExpanded
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_right,
                          color: kSubTitleColor,
                        ),
                        onExpansionChanged: (value) {
                          setState(() {
                            isExpanded = value;
                          });
                        },
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kSubTitleColor),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Pain relief",
                                style: TextStyle(color: kSubTitleColor),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kSubTitleColor),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Fever",
                                style: TextStyle(color: kSubTitleColor),
                              )
                            ],
                          ),
                        ],
                      ),
                      ExpansionTile(
                        collapsedTextColor: kTitleColor,
                        collapsedIconColor: kTitleColor,
                        childrenPadding: EdgeInsets.all(8),
                        tilePadding: EdgeInsets.zero,
                        title: Text(
                          "Side effects of Napa Extend",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        trailing: Icon(
                          isExpanded
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_right,
                          color: kSubTitleColor,
                        ),
                        onExpansionChanged: (value) {
                          setState(() {
                            isExpanded = value;
                          });
                        },
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kSubTitleColor),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "No common side effects seen",
                                style: TextStyle(color: kSubTitleColor),
                              )
                            ],
                          ),
                        ],
                      ),
                      ExpansionTile(
                        collapsedTextColor: kTitleColor,
                        collapsedIconColor: kTitleColor,
                        childrenPadding: EdgeInsets.all(8),
                        tilePadding: EdgeInsets.zero,
                        title: Text(
                          "How to use Napa Extend",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        trailing: Icon(
                          isExpanded
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_right,
                          color: kSubTitleColor,
                        ),
                        onExpansionChanged: (value) {
                          setState(() {
                            isExpanded = value;
                          });
                        },
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kSubTitleColor),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                napaDetails,
                                style: TextStyle(color: kSubTitleColor),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}

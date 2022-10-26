import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/const.dart';

class PharmacyDetailsScreen extends StatefulWidget {
  const PharmacyDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PharmacyDetailsScreen> createState() => _PharmacyDetailsScreenState();
}

class _PharmacyDetailsScreenState extends State<PharmacyDetailsScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  late ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: BackButton(
              color: kTittleColor,
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
                        border:
                            Border.all(color: kTextFieldBorderColor, width: 2)),
                    child: Icon(
                      IconlyBold.heart,
                      color: kBadgeColor,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kLikeWhiteColor,
                      border:
                          Border.all(color: kTextFieldBorderColor, width: 2)),
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
                        color: kTittleColor,
                        size: 18,
                      )),
                ),
              ),
            ]),
        body: Stack(
          children: [
            Container(
              height: 270,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/pharmacy_ladies.png'),
                      fit: BoxFit.fill)),
            ),
            DraggableScrollableSheet(
                maxChildSize: 1,
                initialChildSize: 0.7,
                minChildSize: 0.15,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: kbigContainerColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Maan Pharmacy Ltd.",
                              style: ktitleTextStyle.copyWith(fontSize: 20),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: kStarColor,
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: " 4.5 ",
                                        style: TextStyle(color: kTittleColor),
                                        children: [
                                      TextSpan(
                                        text: "(70+)",
                                        style:
                                            TextStyle(color: kSubTittleColor),
                                      )
                                    ])),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              IconlyLight.location,
                              color: kMainColor,
                              size: 16,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "2715 Ash Dr. San Jose, South Dakota 83475",
                              style: ksubTitleTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  IconlyLight.timeCircle,
                                  color: kWatchColor,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Delivery: 25 - 30 mins",
                                  style: ksubTitleTextStyle,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Map Direction",
                                  style: ksubTitleTextStyle,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kBadgeColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(
                                      FeatherIcons.navigation,
                                      color: kLikeWhiteColor,
                                      size: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        TabBar(
                          tabs: [
                            Tab(
                              text: "Medicine",
                            ),
                            Tab(
                              text: "About Us",
                            ),
                            Tab(
                              text: "Open and Closed",
                            ),
                            Tab(
                              text: "Rating",
                            ),
                          ],
                          isScrollable: true,
                          controller: _tabController,
                          labelColor: kBadgeColor,
                          unselectedLabelColor: kSubTittleColor,
                          indicatorColor: kBadgeColor,
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  AppTextField(
                                    textFieldType: TextFieldType.NAME,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.zero,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            borderSide: BorderSide.none),
                                        prefixIcon: Icon(
                                          IconlyLight.search,
                                          color: kTittleColor,
                                        ),
                                        hintText: "Search...",
                                        hintStyle:
                                            TextStyle(color: kSubTittleColor),
                                        filled: true,
                                        fillColor: kTextFieldColor),
                                  ),
                                  Card(
                                    elevation: 0,
                                    shape: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 110,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight:
                                                      Radius.circular(10)),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/napa.png"),
                                                  fit: BoxFit.fill)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Napa Extend Taplet",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              const SizedBox(
                                                height: 6,
                                              ),
                                              Text(
                                                "(Paracetamol)",
                                                style: TextStyle(
                                                    color: kSubTittleColor),
                                              ),
                                              const SizedBox(
                                                height: 6,
                                              ),
                                              RichText(
                                                  text: TextSpan(
                                                      text: 'MRP',
                                                      style: TextStyle(
                                                          color:
                                                              kSubTittleColor),
                                                  children: [
                                                      TextSpan(
                                                      text: ' \$6.99 ',
                                                      style: TextStyle(
                                                          color:
                                                          kMainColor),
                                                      ),  TextSpan(
                                                      text: ' \$7.9 ',
                                                      style: TextStyle(
                                                          color:
                                                          kSubTittleColor,
                                                      decoration: TextDecoration.lineThrough),

                                                      ),

                                                  ]))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Text('tarik'),
                              Text('tarik'),
                              Text('tarik'),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ],
        ));
  }
}

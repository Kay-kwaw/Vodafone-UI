
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeCoffeeWidget extends StatefulWidget {
  const HomeCoffeeWidget({Key? key}) : super(key: key);

  @override
  _HomeCoffeeWidgetState createState() => _HomeCoffeeWidgetState();
}

class _HomeCoffeeWidgetState extends State<HomeCoffeeWidget> {

  final scaffoldKey = GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF1F4F8),
        appBar: AppBar(
          title: const Text("Good morning. Might", 
          style: TextStyle(
            fontFamily: 'Plus Jakarta Sans',
            color: Color(0xFF14181B),
            fontSize: 15,
            fontWeight: FontWeight.normal,
          )
          ),
          
          backgroundColor: const Color(0xFFF1F4F8),
          automaticallyImplyLeading: false,
          leading: Image.asset("assets/vodafone-removebg-preview.png"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                width: 60,
                height: 60,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: IconButton(onPressed: (){}, icon: const Icon(Icons.notification_add_outlined, color: Colors.red, size: 24,)),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                child: Text(
                  '',
                  style: TextStyle(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color(0xFF57636C),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: InkWell(
                      onTap: () async {},
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 170,
                                height: 140,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 0,
                                      color: Color(0x411D2429),
                                      offset: Offset(0, 0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Icon(Icons.cell_tower, color: Colors.red, size: 22,)),
                                        SizedBox(height: 23,),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0,0,80,0),
                                          child: Text("Your data", style: TextStyle(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF14181B),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                          ),
                                          textAlign: TextAlign.start,
                                          ),
                                        ),
                                        SizedBox(height: 0,),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0,0,40,0),
                                          child: Row(
                                            children: [
                                              Text("20.34", style: TextStyle(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF14181B),
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700,
                                              ),),
                                              Text("GB")
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                width: 170,
                                height: 140,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 0,
                                      color: Color(0x411D2429),
                                      offset: Offset(0, 0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Icon(Icons.sim_card, color: Colors.red, size: 22,)),
                                        SizedBox(height: 23,),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0,0,20,0),
                                          child: Text("Your airtime balance", style: TextStyle(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF14181B),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                          ),
                                          textAlign: TextAlign.start,
                                          ),
                                        ),
                                        SizedBox(height: 0,),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0,0,65,0),
                                          child: Text("4.32", style: TextStyle(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF14181B),
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600,
                                          ),),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 16,),
                          Container(
                            width: 170,
                            height: 140,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0x411D2429),
                                  offset: Offset(0, 0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Icon(Icons.payment_sharp, color: Colors.red, size: 22,)),
                                    SizedBox(height: 18,),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0,0,58,0),
                                      child: Text("Pay Bill", style: TextStyle(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.start,
                                      ),
                                    ),
                                    SizedBox(height: 0,),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0,0,0,0),
                                      child: Text("Make payments for your postpaid services", style: TextStyle(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                      ),),
                                    ),
                                ],
                              ),
                            ),
                            
                          ),
                        ],
                      ),
                    ),
                  ),
                 
                ],
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                child: Text(
                  'Manage',
                  style: TextStyle(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child:ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: InkWell(
                      onTap: () async {},
                      child: Row(
                        children: [
                          Container(
                            width: 170,
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0x411D2429),
                                  offset: Offset(0, 0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Icon(Icons.add_circle, color: Color.fromARGB(255, 119, 119, 119), size: 22,)),
                                    SizedBox(height: 23,),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0,0,20,0),
                                      child: Text("Top Up Airtime Or Data", style: TextStyle(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w800,
                                      ),
                                      textAlign: TextAlign.start,
                                      ),
                                    ),
                                    SizedBox(height: 0,),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,),
                          Container(
                            width: 170,
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0x411D2429),
                                  offset: Offset(0, 0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Icon(Icons.phone_android_outlined, color: Color.fromARGB(255, 119, 119, 119), size: 22,)),
                                    SizedBox(height: 18,),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0,10,40,10),
                                      child: Text("My Subscription", style: TextStyle(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w800,
                                      ),
                                      textAlign: TextAlign.start,
                                      ),
                                    ),
                                    SizedBox(height: 0,),
                                ],
                              ),
                            ),
                            
                          ),
                        ],
                      ),
                    ),
                  ),
                 
                ],
              ), // Generated code for this ListView Widget...
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 44),
                child:ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: InkWell(
                      onTap: () async {},
                      child: Row(
                        children: [
                         Container(
                            width: 170,
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0x411D2429),
                                  offset: Offset(0, 0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Icon(Icons.phone_android_outlined, color: Color.fromARGB(255, 119, 119, 119), size: 22,)),
                                    SizedBox(height: 18,),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0,10,40,10),
                                      child: Text("Value-Added Services", style: TextStyle(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w800,
                                      ),
                                      textAlign: TextAlign.start,
                                      ),
                                    ),
                                    SizedBox(height: 0,),
                                ],
                              ),
                            ),
                            
                          ),
                          const SizedBox(
                            width: 16,),
                          Container(
                            width: 170,
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: Color(0x411D2429),
                                  offset: Offset(0, 0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Icon(Icons.card_giftcard,color: Color.fromARGB(255, 119, 119, 119), size: 22,)),
                                    SizedBox(height: 18,),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0,10,40,10),
                                      child: Text("Red Loyalty Rewards", style: TextStyle(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w800,
                                      ),
                                      textAlign: TextAlign.start,
                                      ),
                                    ),
                                    SizedBox(height: 0,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                 
                ],
              ), // Generated code for this ListView Widget...


              ),
            ],
          ),
          
        ),
        bottomNavigationBar:BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
            });
          },
          items:  [
          const BottomNavigationBarItem(
            icon: Icon(Icons.computer_outlined,),
            label: 'Services',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.money,),
            label: 'Search',
          ),
           BottomNavigationBarItem(
           icon: Image.asset("assets/vodafone.jpg"),
              label: '', // You can keep a label for accessibility
            ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add_circle,),
            label: 'Bundles',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings,),
            label: 'Settings',
          ),
  ],
          selectedItemColor: Colors.red, // You can customize the selected item color
          unselectedItemColor: Colors.grey, // You can customize the unselected item color
          showUnselectedLabels: true, // Set this to false if you don't want to show unselected labels
          selectedFontSize: 8, // Set the font size for the selected label
          unselectedFontSize: 10, // Set the font size for unselected labels
        ),
      ),
    );
  }
}

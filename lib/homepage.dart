
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:vodafone/commons/ThemeManager.dart';
import 'package:vodafone/commons/navbar.dart';
import 'package:vodafone/second_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Consumer(
      builder: (context, value, child) {
     return GestureDetector(
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFFF1F4F8),
            appBar: AppBar(
              title: const Text("Good morning, Kwaw Kumi", 
              style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                color: Color(0xFF14181B),
                fontSize: 15,
                fontWeight: FontWeight.normal,
              )
              ),
              automaticallyImplyLeading: false,
              leading: Image.asset("assets/vodafone-removebg-preview.png",),
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
                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.notification_important, color: Color.fromARGB(255, 255, 47, 32), size: 24,)),
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
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 0,
                            color: Color(0x25090F13),
                            offset: Offset(0, 0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child:   Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(7, 0, 0, 0),
                              child: Icon(Icons.cell_tower,
                                  color: Color.fromARGB(255, 255, 0, 0), size: 24),
                            ),
                                const SizedBox(height: 10,),
                            LinearPercentIndicator(
                                width: 330,
                                lineHeight: 8.0,
                                barRadius: const Radius.circular(40),
                                percent: 0.2,
                                backgroundColor: Colors.grey,
                                progressColor: Colors.red,
                            ),
                            const SizedBox(height: 20,),
                            const Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(10,0,0,0),
                                        child: Text(
                                          'Your data',
                                          style:TextStyle(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: Color(0xFF14181B),
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                            child: Text(
                                              '20.34',
                                              style: TextStyle(
                                                    fontFamily: 'Outfit',
                                                    color: Color(0xFF14181B),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                            child: Text(" GB left", style: TextStyle(fontSize: 12),),
                                          )
                                        ],
                                      ),
        
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(40, 15, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                       Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(10, 3, 0, 0),
                                              child: Text("of",),
                                            ),
                                            SizedBox(width: 4,),
                                            Text(
                                              '300',
                                              style: TextStyle(
                                                    fontFamily: 'Outfit',
                                                    color: Color(0xFF14181B),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                              child: Text(" GB left", style: TextStyle(fontSize: 12),),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
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
                                        SizedBox(height: 30,),
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
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0,0,30,0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                child: Text("GHS ", style: TextStyle(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF14181B),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                ),),
                                              ),
                                              Text("4.32", style: TextStyle(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF14181B),
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),),
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
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
                                        SizedBox(height: 20,),
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
                                            fontWeight: FontWeight.w300,
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
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 44),
                    child: // Generated code for this ListView Widget...
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
                          child: Container(
                            width: MediaQuery.sizeOf(context).width,
                            height: 80,
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
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 255, 255, 255),
                                            border: Border.all(
                                              color: const Color.fromARGB(255, 231, 231, 231),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                          child: const Icon(Icons.add_circle, color: Color.fromARGB(255, 119, 119, 119), size: 20,)),
                                      )
                                    ),
                                  ),
                                  const Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 4, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Top Up airtime or data',
                                            style: TextStyle(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF14181B),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 8, 0),
                                            child: Text(
                                              'Recharge airtime or data to this phone',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                    fontFamily: 'Plus Jakarta Sans',
                                                    color: Color(0xFF14181B),
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                        child: Icon(
                                          Icons.chevron_right_rounded,
                                          color: Color(0xFF57636C),
                                          size: 30,
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(16, 2, 16, 0),
                        child: InkWell(
                          onTap: () async {},
                          child: Container(
                            width: MediaQuery.sizeOf(context).width,
                            height: 80,
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
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color.fromARGB(255, 231, 231, 231),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: const Icon(Icons.phone_android, color: Color.fromARGB(255, 119, 119, 119), size: 20,))
                                    ),
                                  ),
                                  const Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 4, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'My Subscriptions',
                                            style: TextStyle(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF14181B),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 8, 0),
                                            child: Text(
                                              'Manage all your subscriptions',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                    fontFamily: 'Plus Jakarta Sans',
                                                    color: Color(0xFF14181B),
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                        child: Icon(
                                          Icons.chevron_right_rounded,
                                          color: Color(0xFF57636C),
                                          size: 30,
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(16, 2, 16, 0),
                        child: InkWell(
                          onTap: () async {},
                          child: Container(
                            width: MediaQuery.sizeOf(context).width,
                            height: 80,
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
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: const Color.fromARGB(255, 231, 231, 231),
                                          ),
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: const Icon(Icons.stacked_bar_chart_outlined, color: Color.fromARGB(255, 119, 119, 119), size: 20,))
                                    ),
                                  ),
                                  const Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 4, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Value-Added Services',
                                            style: TextStyle(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF14181B),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 8, 0),
                                            child: Text(
                                              'Recharge airtime or data to this phone',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                    fontFamily: 'Plus Jakarta Sans',
                                                    color: Color(0xFF14181B),
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                        child: Icon(
                                          Icons.chevron_right_rounded,
                                          color: Color(0xFF57636C),
                                          size: 30,
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(16, 2, 16, 0),
                        child: InkWell(
                          onTap: () async {},
                          child: Container(
                            width: MediaQuery.sizeOf(context).width,
                            height: 80,
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
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: const Color.fromARGB(255, 231, 231, 231),
                                          ),
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: const Icon(Icons.card_giftcard, color: Color.fromARGB(255, 119, 119, 119), size: 20,))
                                    ),
                                  ),
                                  const Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 4, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Red Loyalty Rewards',
                                            style: TextStyle(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF14181B),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 8, 0),
                                            child: Text(
                                              'Recharge airtime or data to this phone',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                    fontFamily: 'Plus Jakarta Sans',
                                                    color: Color(0xFF14181B),
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                        child: Icon(
                                          Icons.chevron_right_rounded,
                                          color: Color(0xFF57636C),
                                          size: 30,
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      
                    ],
                  )
                  ),
                ],
              ),
            ),
            bottomNavigationBar: MybottomNavbar(),
            ),
          );
  });
  
  }
}

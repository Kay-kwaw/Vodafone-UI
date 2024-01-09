import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
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
                  )
    ]);
  }
}
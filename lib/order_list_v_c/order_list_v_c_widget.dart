import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderListVCWidget extends StatefulWidget {
  const OrderListVCWidget({
    Key? key,
    this.methodSelected,
  }) : super(key: key);

  final int? methodSelected;

  @override
  _OrderListVCWidgetState createState() => _OrderListVCWidgetState();
}

class _OrderListVCWidgetState extends State<OrderListVCWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(184),
        child: AppBar(
          backgroundColor: Color(0x000A263D),
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/Home_Dashboard@2x.png',
                      width: double.infinity,
                      height: 184,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 35, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: '',
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          size: 15,
                        ),
                        options: FFButtonOptions(
                          width: 40,
                          height: 40,
                          color: Color(0x004B39EF),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          elevation: 0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),
                        showLoadingIndicator: false,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 20),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF1A3555),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(19, 20, 0, 0),
                  child: Text(
                    'Order History',
                    style: TextStyle(
                      fontFamily: 'Cera Pro',
                      color: Color(0xFFAEE3EF),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(19, 12, 16, 0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: OrderListCall.call(
                        apiKey: getJsonField(
                          FFAppState().logResponse,
                          r'''$.access_token''',
                        ).toString(),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        final listViewOrderListResponse = snapshot.data!;
                        return Builder(
                          builder: (context) {
                            final orderListResponse = getJsonField(
                              listViewOrderListResponse.jsonBody,
                              r'''$.data''',
                            ).toList();
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: orderListResponse.length,
                              itemBuilder: (context, orderListResponseIndex) {
                                final orderListResponseItem =
                                    orderListResponse[orderListResponseIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 33),
                                  child: Container(
                                    width: double.infinity,
                                    height: 190,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFAEE3EF),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Stack(
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 11, 0, 0),
                                                    child: Text(
                                                      'Order:',
                                                      style: TextStyle(
                                                        fontFamily: 'Cera Pro',
                                                        color:
                                                            Color(0xFF1A3555),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 11, 15, 0),
                                                  child: Text(
                                                    getJsonField(
                                                      orderListResponseItem,
                                                      r'''$.order_id''',
                                                    ).toString(),
                                                    style: TextStyle(
                                                      fontFamily: 'Cera Pro',
                                                      color: Color(0xFF1A3555),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 11, 0, 0),
                                                    child: Text(
                                                      'Date:',
                                                      style: TextStyle(
                                                        fontFamily: 'Cera Pro',
                                                        color:
                                                            Color(0xFF1A3555),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 11, 15, 0),
                                                  child: Text(
                                                    functions
                                                        .convertStringFormat(
                                                            getJsonField(
                                                              orderListResponseItem,
                                                              r'''$.created''',
                                                            ).toString(),
                                                            'MMM dd, yyyy'),
                                                    style: TextStyle(
                                                      fontFamily: 'Cera Pro',
                                                      color: Color(0xFF1A3555),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 11, 0, 0),
                                                    child: Text(
                                                      'Status:',
                                                      style: TextStyle(
                                                        fontFamily: 'Cera Pro',
                                                        color:
                                                            Color(0xFF1A3555),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 11, 15, 0),
                                                  child: Text(
                                                    functions.orderStatusChange(
                                                        getJsonField(
                                                      orderListResponseItem,
                                                      r'''$.status''',
                                                    ).toString()),
                                                    style: TextStyle(
                                                      fontFamily: 'Cera Pro',
                                                      color: Color(0xFF1A3555),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 11, 0, 0),
                                                    child: Text(
                                                      'Total:',
                                                      style: TextStyle(
                                                        fontFamily: 'Cera Pro',
                                                        color:
                                                            Color(0xFF1A3555),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 11, 15, 0),
                                                  child: Text(
                                                    '\$${getJsonField(
                                                      orderListResponseItem,
                                                      r'''$.total''',
                                                    ).toString()} for ${getJsonField(
                                                      orderListResponseItem,
                                                      r'''$.items[0].qty''',
                                                    ).toString()} item',
                                                    style: TextStyle(
                                                      fontFamily: 'Cera Pro',
                                                      color: Color(0xFF1A3555),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 20, 15, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 4, 0),
                                                      child: FFButtonWidget(
                                                        onPressed: () {
                                                          print(
                                                              'btnViewPressed pressed ...');
                                                        },
                                                        text: 'View',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 100,
                                                          height: 35,
                                                          color:
                                                              Color(0xFF1A3555),
                                                          textStyle: TextStyle(
                                                            fontFamily:
                                                                'Cera Pro',
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14,
                                                          ),
                                                          elevation: 0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  if (!functions
                                                      .isDriverAssigned(
                                                          getJsonField(
                                                    orderListResponseItem,
                                                    r'''$.status''',
                                                  ).toString()))
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    4, 0, 0, 0),
                                                        child: FFButtonWidget(
                                                          onPressed: () {
                                                            print(
                                                                'btnViewPressed pressed ...');
                                                          },
                                                          text:
                                                              'Cancel Request',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 100,
                                                            height: 35,
                                                            color: Color(
                                                                0xFF1A3555),
                                                            textStyle:
                                                                TextStyle(
                                                              fontFamily:
                                                                  'Cera Pro',
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 14,
                                                            ),
                                                            elevation: 0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

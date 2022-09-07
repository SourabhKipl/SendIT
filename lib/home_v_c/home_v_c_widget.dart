import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../order_list_v_c/order_list_v_c_widget.dart';
import '../pickup_date_v_c/pickup_date_v_c_widget.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeVCWidget extends StatefulWidget {
  const HomeVCWidget({
    Key? key,
    this.name,
  }) : super(key: key);

  final String? name;

  @override
  _HomeVCWidgetState createState() => _HomeVCWidgetState();
}

class _HomeVCWidgetState extends State<HomeVCWidget> {
  ApiCallResponse? userResponse;
  final formKey = GlobalKey<FormState>();
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
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 35, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await actions.sideMenu();
                            },
                            text: '',
                            icon: Icon(
                              Icons.menu_rounded,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 29,
                            ),
                            options: FFButtonOptions(
                              width: 40,
                              height: 40,
                              color: Color(0x004B39EF),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 27, 0),
                                child: Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFC4C4C4),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0xFFAEE3EF),
                                      width: 3,
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
            ],
          ),
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(35, 0, 35, 0),
        child: Container(
          width: double.infinity,
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 31, 0, 0),
                  child: Text(
                    widget.name!,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Cera Pro',
                      color: Color(0xFF1A3555),
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                  child: Text(
                    'Welcome back',
                    style: TextStyle(
                      fontFamily: 'Cera Pro',
                      color: Color(0xFF9A9A9A),
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 8, 0),
                  child: Container(
                    width: double.infinity,
                    height: 205,
                    decoration: BoxDecoration(
                      color: Color(0xB2AEE3EF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(18, 21, 13, 0),
                            child: AutoSizeText(
                              'Ready to schedule your \nnext pickup?',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'Cera Pro',
                                color: Color(0xFF1A3555),
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(18, 12, 13, 0),
                            child: Text(
                              'We pick up returns from any online \nretailer and insure each item \nup to \$1,000',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'Cera Pro',
                                color: Color(0xFF1A3555),
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 14, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      18, 7, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      userResponse =
                                          await GetUserDetailCall.call(
                                        apiKey: valueOrDefault<String>(
                                          getJsonField(
                                            FFAppState().logResponse,
                                            r'''$.access_token''',
                                          ).toString(),
                                          'NA',
                                        ),
                                      );
                                      setState(() => FFAppState().userData =
                                          (userResponse?.jsonBody ?? ''));
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PickupDateVCWidget(
                                            isEdit: false,
                                          ),
                                        ),
                                      );

                                      setState(() {});
                                    },
                                    text: 'Schedule a pickup',
                                    options: FFButtonOptions(
                                      width: 156,
                                      height: 35,
                                      color: Color(0xFF1A3555),
                                      textStyle: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                      ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(10.94),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 21, 0),
                                    child: Image.asset(
                                      'assets/images/Frame@3x.png',
                                      width: 77,
                                      height: 83.25,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 67, 8, 0),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    constraints: BoxConstraints(
                      maxHeight: 117,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFAEE3EF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(21, 13, 0, 0),
                          child: Text(
                            'Need More Pro ?',
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              color: Color(0xFF1A3555),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(21, 11, 45, 0),
                          child: Text(
                            'Upgrade to unlimited pickups for \$14.99',
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              color: Color(0xFF1A3555),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OrderListVCWidget(),
                                  ),
                                );
                              },
                              text: 'Upgrade Now!',
                              options: FFButtonOptions(
                                width: 160,
                                height: 35,
                                color: Color(0x004B39EF),
                                textStyle: TextStyle(
                                  fontFamily: 'Cera Pro',
                                  color: Color(0xFF1A3555),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                                elevation: 0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ],
                        ),
                      ],
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

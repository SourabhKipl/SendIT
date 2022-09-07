import '../components/digital_label_pop_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LabelTypePopWidget extends StatefulWidget {
  const LabelTypePopWidget({
    Key? key,
    this.selectedIndex,
    this.checkTest,
  }) : super(key: key);

  final int? selectedIndex;
  final Future<dynamic> Function()? checkTest;

  @override
  _LabelTypePopWidgetState createState() => _LabelTypePopWidgetState();
}

class _LabelTypePopWidgetState extends State<LabelTypePopWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Container(
        width: 344,
        height: 618,
        decoration: BoxDecoration(
          color: Color(0x00090F13),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Text(
                        'Select label type',
                        style: TextStyle(
                          fontFamily: 'Cera Pro',
                          color: Color(0xFF1A3555),
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                      child: Text(
                        'What type of return label do you have?',
                        style: TextStyle(
                          fontFamily: 'Cera Pro',
                          color: Color(0xFF1A3555),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Container(
                        width: 205,
                        height: 141,
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFAEE3EF),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 11, 0),
                                      child: Image.asset(
                                        'assets/images/Icon@3x.png',
                                        width: 25,
                                        height: 25,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          11, 18, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 12, 12, 0),
                                            child: Text(
                                              'Physical label',
                                              style: TextStyle(
                                                fontFamily: 'Cera Pro',
                                                color: Color(0xFF1A3555),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Image.asset(
                                              'assets/images/Group_14087@3x.png',
                                              width: 64,
                                              height: 58,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/Group_14095.png',
                              width: 77,
                              height: 95,
                              fit: BoxFit.contain,
                            ),
                            FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: '',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: double.infinity,
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
                                  width: 0,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              showLoadingIndicator: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Container(
                        width: 205,
                        height: 141,
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFAEE3EF),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 11, 0),
                                      child: Image.asset(
                                        'assets/images/unSelected.png',
                                        width: 25,
                                        height: 25,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          11, 18, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 12, 26, 0),
                                            child: Text(
                                              'Digital label',
                                              style: TextStyle(
                                                fontFamily: 'Cera Pro',
                                                color: Color(0xFF1A3555),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Image.asset(
                                              'assets/images/Group_14087@3x.png',
                                              width: 64,
                                              height: 58,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(11, 0, 0, 0),
                              child: Image.asset(
                                'assets/images/Label_box_1.png',
                                width: 77,
                                height: 95,
                                fit: BoxFit.contain,
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: '',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: double.infinity,
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
                                  width: 0,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              showLoadingIndicator: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Container(
                        width: 205,
                        height: 141,
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFAEE3EF),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 11, 0),
                                      child: Image.asset(
                                        'assets/images/unSelected.png',
                                        width: 25,
                                        height: 25,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          11, 18, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 12, 1, 0),
                                            child: Text(
                                              'Amazon QR code',
                                              style: TextStyle(
                                                fontFamily: 'Cera Pro',
                                                color: Color(0xFF1A3555),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 2, 0, 0),
                                              child: Image.asset(
                                                'assets/images/Group_14087@3x.png',
                                                width: 64,
                                                height: 58,
                                                fit: BoxFit.contain,
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
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(11, 0, 0, 0),
                              child: Image.asset(
                                'assets/images/Amazon_icon_1.png',
                                width: 77,
                                height: 95,
                                fit: BoxFit.contain,
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: '',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: double.infinity,
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
                                  width: 0,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              showLoadingIndicator: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.of(context).viewInsets,
                                child: DigitalLabelPopWidget(),
                              );
                            },
                          );
                        },
                        text: 'Next',
                        options: FFButtonOptions(
                          width: 205,
                          height: 40,
                          color: Color(0xFF1A3555),
                          textStyle: TextStyle(
                            fontFamily: 'Cera Pro',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          elevation: 0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        showLoadingIndicator: false,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/images/Close_1.png',
                    width: 41,
                    height: 20,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

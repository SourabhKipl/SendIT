import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DigitalLabelPopWidget extends StatefulWidget {
  const DigitalLabelPopWidget({Key? key}) : super(key: key);

  @override
  _DigitalLabelPopWidgetState createState() => _DigitalLabelPopWidgetState();
}

class _DigitalLabelPopWidgetState extends State<DigitalLabelPopWidget> {
  TextEditingController? textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 26, 0, 0),
                        child: Text(
                          'Add Digital label',
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            color: Color(0xFF1A3555),
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(31, 30, 0, 0),
                      child: Text(
                        'Upload Return Label',
                        style: TextStyle(
                          fontFamily: 'Cera Pro',
                          color: Color(0xFF1A3555),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/Rounded_Rectangle.png',
                            width: double.infinity,
                            height: 164,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(1, 1, 1, 1),
                            child: Container(
                              width: double.infinity,
                              height: 162,
                              decoration: BoxDecoration(
                                color: Color(0xFFF9FAFB),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 32, 0, 0),
                                    child: Image.asset(
                                      'assets/images/gallery.png',
                                      width: 48,
                                      height: 48,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 16, 0, 0),
                                    child: Text(
                                      'Drag label here or browse ',
                                      style: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        color: Color(0xFF1A3555),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text(
                                      'Supports JPG, PNG, and JPEG',
                                      style: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        color: Color(0xFF9EA3AE),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(31, 21, 0, 0),
                      child: Text(
                        'Description',
                        style: TextStyle(
                          fontFamily: 'Cera Pro',
                          color: Color(0xFF1A3555),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(31, 10, 18, 0),
                      child: TextFormField(
                        controller: textController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'i.e. any useful info about product',
                          hintStyle: TextStyle(
                            fontFamily: 'Cera Pro',
                            color: Color(0xFF9EA3AE),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFE5E6EB),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFE5E6EB),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF9FAFB),
                        ),
                        style: TextStyle(
                          fontFamily: 'Cera Pro',
                          color: FlutterFlowTheme.of(context).black600,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        maxLines: 6,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 29, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Add package',
                          options: FFButtonOptions(
                            width: 247,
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

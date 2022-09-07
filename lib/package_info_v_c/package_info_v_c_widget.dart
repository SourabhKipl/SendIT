import '../components/label_type_pop_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PackageInfoVCWidget extends StatefulWidget {
  const PackageInfoVCWidget({Key? key}) : super(key: key);

  @override
  _PackageInfoVCWidgetState createState() => _PackageInfoVCWidgetState();
}

class _PackageInfoVCWidgetState extends State<PackageInfoVCWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160),
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
              Divider(),
            ],
          ),
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0x00101213),
        ),
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Divider(),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(29, 0, 29, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFFAEE3EF),
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            color: Color(0xFF0A1629),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                      child: Container(
                        width: 25,
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color(0x4D1A3555),
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),
                    ),
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFFAEE3EF),
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            color: Color(0xFF1A3555),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                      child: Container(
                        width: 25,
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color(0x4D1A3555),
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),
                    ),
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFFAEE3EF),
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '3',
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            color: FlutterFlowTheme.of(context).black600,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                      child: Container(
                        width: 25,
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color(0x4D1A3555),
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),
                    ),
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFFAEE3EF),
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '4',
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            color: FlutterFlowTheme.of(context).black600,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                      child: Container(
                        width: 25,
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color(0x4D1A3555),
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),
                    ),
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xFF1A3555),
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '5',
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 29, 13, 0),
                child: Container(
                  height: 500,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0x65AEE3EF),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 9, 10, 0),
                        child: Container(
                          width: double.infinity,
                          height: 480,
                          decoration: BoxDecoration(
                            color: Color(0x4DAEE3EF),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 19, 0, 0),
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      19, 28, 0, 0),
                                  child: Text(
                                    'Step 4',
                                    style: TextStyle(
                                      fontFamily: 'Cera Pro',
                                      color: Color(0xFFAEE3EF),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      19, 20, 0, 0),
                                  child: Text(
                                    'Package info',
                                    style: TextStyle(
                                      fontFamily: 'Cera Pro',
                                      color: Color(0xFFAEE3EF),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      19, 13, 0, 0),
                                  child: Text(
                                    'Describe your returns and we\'ll handle the label \nprinting and repackaging',
                                    style: TextStyle(
                                      fontFamily: 'Cera Pro',
                                      color: Color(0xFFAEE3EF),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      19, 20, 19, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 299,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0, -0.3),
                                          child: Image.asset(
                                            'assets/images/pack@x3.png',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0, 0.2),
                                          child: Text(
                                            'Add a package',
                                            style: TextStyle(
                                              fontFamily: 'Cera Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/images/Rounded_Rectangle@3x.png',
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.fill,
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 10),
                child: InkWell(
                  onTap: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: LabelTypePopWidget(
                            checkTest: () async {},
                          ),
                        );
                      },
                    );
                    if (functions.isUserExsist()) {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Color(0x80090F13),
                        barrierColor: Color(0x82090F13),
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.of(context).viewInsets,
                            child: Container(
                              height: double.infinity,
                              child: LabelTypePopWidget(
                                checkTest: () async {},
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      return;
                    }
                  },
                  child: Image.asset(
                    'assets/images/Next_Mobile_Arrow@3x.png',
                    width: 85,
                    height: 85,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

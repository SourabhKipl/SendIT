import '../choose_plan_v_c/choose_plan_v_c_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PickupMethodVCWidget extends StatefulWidget {
  const PickupMethodVCWidget({
    Key? key,
    this.isEdit,
  }) : super(key: key);

  final bool? isEdit;

  @override
  _PickupMethodVCWidgetState createState() => _PickupMethodVCWidgetState();
}

class _PickupMethodVCWidgetState extends State<PickupMethodVCWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

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
                        color: Color(0xFF1A3555),
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '3',
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
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
                          '4',
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
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
                          child: Form(
                            key: formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        19, 55, 0, 0),
                                    child: Text(
                                      'Pickup details',
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
                                      'Which pickup method do you prefer?\n',
                                      style: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        color: Color(0xFFAEE3EF),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 38, 0, 0),
                                      child: Container(
                                        width: 191,
                                        height: 112,
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  7.47, 9.82),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 15, 0, 0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFAEE3EF),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                1.13, 72, 0, 0),
                                                    child: Text(
                                                      'Direct handoff',
                                                      style: TextStyle(
                                                        fontFamily: 'Cera Pro',
                                                        color:
                                                            Color(0xFF1A3555),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/images/11332_1@3x.png',
                                              width: 101,
                                              height: 73,
                                              fit: BoxFit.cover,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(120, 60, 0, 0),
                                              child: Image.asset(
                                                'assets/images/Group_14087@3x.png',
                                                width: 55,
                                                height: 83,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(162, 24, 0, 0),
                                              child: Image.asset(
                                                'assets/images/Icon@3x.png',
                                                width: 22,
                                                height: 22,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 15, 0, 0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  setState(() =>
                                                      FFAppState().pickMethod =
                                                          'Direct Handoff');
                                                },
                                                text: '',
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  color: Color(0x004B39EF),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ).animated([
                                                animationsMap[
                                                    'buttonOnPageLoadAnimation']!
                                              ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 38, 0, 0),
                                      child: Container(
                                        width: 191,
                                        height: 112,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 15, 0, 0),
                                              child: Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFAEE3EF),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/images/14432_1@3x.png',
                                              width: 101,
                                              height: 73,
                                              fit: BoxFit.cover,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(120, 60, 0, 0),
                                              child: Image.asset(
                                                'assets/images/Group_14087@3x.png',
                                                width: 55,
                                                height: 83,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(162, 24, 0, 0),
                                              child: Image.asset(
                                                'assets/images/Icon@3x.png',
                                                width: 22,
                                                height: 22,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12.13, 90, 0, 0),
                                              child: Text(
                                                'Leave on doorstep',
                                                style: TextStyle(
                                                  fontFamily: 'Cera Pro',
                                                  color: Color(0xFF1A3555),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 15, 0, 0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  setState(() =>
                                                      FFAppState().pickMethod =
                                                          'Leave on Doorstep');
                                                },
                                                text: '',
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  color: Color(0x004B39EF),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                      ),
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
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
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChoosePlanVCWidget(),
                      ),
                    );
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

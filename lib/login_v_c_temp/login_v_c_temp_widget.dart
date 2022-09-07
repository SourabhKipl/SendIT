import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../signup_v_c/signup_v_c_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginVCTempWidget extends StatefulWidget {
  const LoginVCTempWidget({Key? key}) : super(key: key);

  @override
  _LoginVCTempWidgetState createState() => _LoginVCTempWidgetState();
}

class _LoginVCTempWidgetState extends State<LoginVCTempWidget> {
  ApiCallResponse? data;
  TextEditingController? paswordController;
  late bool paswordVisibility;
  TextEditingController? txtUserNameController;
  String? radioButtonValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    paswordController = TextEditingController();
    paswordVisibility = false;
    txtUserNameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xFF0A263D),
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Image.asset(
                          'assets/images/Color-logo-no-background.png',
                          width: 150,
                          height: 60,
                          fit: BoxFit.scaleDown,
                        ),
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
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Container(
              width: double.infinity,
              child: Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).black600,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 10, 24, 0),
                        child: TextFormField(
                          controller: txtUserNameController,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Username\n',
                            hintStyle: GoogleFonts.getFont(
                              'Lexend Deca',
                              color: FlutterFlowTheme.of(context).grayIcon,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).black600,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).black600,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).black600,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return 'Username is required';
                            }

                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 10, 24, 0),
                        child: TextFormField(
                          controller: paswordController,
                          obscureText: !paswordVisibility,
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Password',
                            hintStyle: GoogleFonts.getFont(
                              'Lexend Deca',
                              color: FlutterFlowTheme.of(context).grayIcon,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).black600,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).black600,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => paswordVisibility = !paswordVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                paswordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 22,
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).black600,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return 'Password can not be blank';
                            }

                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            data = await GetProductCall.call();

                            setState(() {});
                          },
                          text: 'Login',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50,
                            color: FlutterFlowTheme.of(context).black600,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 16,
                                    ),
                            elevation: 0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FFButtonWidget(
                              onPressed: () {
                                print('Button-Login pressed ...');
                              },
                              text: ' Forgot Password?',
                              options: FFButtonOptions(
                                width: 190,
                                height: 40,
                                color: Color(0x00F1F4F8),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                elevation: 0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 0,
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              showLoadingIndicator: false,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 10, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF0A263D),
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  // btnLoginPressed
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignupVCWidget(),
                                    ),
                                  );
                                },
                                text: 'Register',
                                options: FFButtonOptions(
                                  width: 90,
                                  height: 40,
                                  color: Color(0x00090F13),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary400,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  elevation: 0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 0,
                                  ),
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FlutterFlowRadioButton(
                        options: ['Option 1'].toList(),
                        onChanged: (value) {
                          setState(() => radioButtonValue = value);
                        },
                        optionHeight: 25,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.vertical,
                        radioButtonColor: Colors.blue,
                        inactiveRadioButtonColor: Color(0x8A000000),
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.start,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

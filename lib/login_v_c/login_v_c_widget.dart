import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../forgot_password_v_c/forgot_password_v_c_widget.dart';
import '../home_v_c/home_v_c_widget.dart';
import '../signup_v_c/signup_v_c_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginVCWidget extends StatefulWidget {
  const LoginVCWidget({Key? key}) : super(key: key);

  @override
  _LoginVCWidgetState createState() => _LoginVCWidgetState();
}

class _LoginVCWidgetState extends State<LoginVCWidget> {
  ApiCallResponse? loginResponse;
  TextEditingController? txtEmailAddressController;
  TextEditingController? txtPasswordController;
  late bool txtPasswordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    txtEmailAddressController = TextEditingController();
    txtPasswordController = TextEditingController();
    txtPasswordVisibility = false;
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
      body: Form(
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
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 2),
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
                padding: EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
                child: TextFormField(
                  controller: txtEmailAddressController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Username\n',
                    hintStyle: TextStyle(
                      fontFamily: 'Cera Pro',
                      color: Color(0xFF9EA3AE),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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
                    fontSize: 16,
                  ),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'Please enter user name';
                    }
                    if (val.length < 1) {
                      return 'Please enter username';
                    }

                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                child: TextFormField(
                  controller: txtPasswordController,
                  obscureText: !txtPasswordVisibility,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontFamily: 'Cera Pro',
                      color: Color(0xFF9EA3AE),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => txtPasswordVisibility = !txtPasswordVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        txtPasswordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 22,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    fontFamily: 'Cera Pro',
                    color: FlutterFlowTheme.of(context).black600,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'Please enter password';
                    }
                    if (val.length < 6) {
                      return 'Password should be min 6 characters long';
                    }

                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 6, 24, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: ForgotPasswordVCWidget(),
                          ),
                        );
                      },
                      text: ' Forgot Password?',
                      options: FFButtonOptions(
                        width: 144,
                        height: 40,
                        color: Color(0x00F1F8F6),
                        textStyle: TextStyle(
                          fontFamily: 'Cera Pro',
                          color: Color(0xFF192126),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
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
                padding: EdgeInsetsDirectional.fromSTEB(24, 13, 24, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    var _shouldSetState = false;
                    if (formKey.currentState == null ||
                        !formKey.currentState!.validate()) {
                      return;
                    }

                    loginResponse = await LoginApiCall.call(
                      username: txtEmailAddressController!.text,
                      password: txtPasswordController!.text,
                      grantType: 'password',
                    );
                    _shouldSetState = true;
                    if (getJsonField(
                      (loginResponse?.jsonBody ?? ''),
                      r'''$.access_token''',
                    )) {
                      setState(() => FFAppState().logResponse =
                          (loginResponse?.jsonBody ?? ''));
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeVCWidget(
                            name: txtEmailAddressController!.text,
                          ),
                        ),
                      );
                    } else {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('SEND IT'),
                            content:
                                Text('Invalid username/password combinations'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                      if (_shouldSetState) setState(() {});
                      return;
                    }

                    if (_shouldSetState) setState(() {});
                  },
                  text: 'Login',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 56,
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
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 23, 24, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontFamily: 'Cera Pro',
                        color: Color(0xFF4D5461),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        // btnLoginPressed
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupVCWidget(),
                          ),
                        );
                      },
                      text: 'Sign up',
                      options: FFButtonOptions(
                        height: 40,
                        color: Color(0x00090F13),
                        textStyle: TextStyle(
                          fontFamily: 'Cera Pro',
                          color: FlutterFlowTheme.of(context).black600,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        elevation: 0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

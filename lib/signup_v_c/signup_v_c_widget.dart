import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupVCWidget extends StatefulWidget {
  const SignupVCWidget({Key? key}) : super(key: key);

  @override
  _SignupVCWidgetState createState() => _SignupVCWidgetState();
}

class _SignupVCWidgetState extends State<SignupVCWidget> {
  ApiCallResponse? signupResponse;
  TextEditingController? confirmPasswordController;
  late bool confirmPasswordVisibility;
  TextEditingController? emailAddressController;
  TextEditingController? usernameController;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordController = TextEditingController();
    confirmPasswordVisibility = false;
    emailAddressController = TextEditingController();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
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
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Text(
                    'Create an Account',
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
                  controller: usernameController,
                  onChanged: (_) => EasyDebounce.debounce(
                    'usernameController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Username',
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
                    contentPadding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
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

                    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
                      return 'Please enter correect username';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 10, 24, 0),
                child: TextFormField(
                  controller: emailAddressController,
                  onChanged: (_) => EasyDebounce.debounce(
                    'emailAddressController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Email Address',
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
                    contentPadding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                  ),
                  style: TextStyle(
                    fontFamily: 'Cera Pro',
                    color: FlutterFlowTheme.of(context).black600,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'Please enter email address';
                    }

                    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
                      return 'Please enter valid email';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 10, 24, 0),
                child: TextFormField(
                  controller: passwordController,
                  onChanged: (_) => EasyDebounce.debounce(
                    'passwordController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: !passwordVisibility,
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
                    contentPadding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordVisibility = !passwordVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        passwordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Color(0xFF757575),
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
                      return 'Password should be min 6 character long';
                    }

                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 10, 24, 0),
                child: TextFormField(
                  controller: confirmPasswordController,
                  onChanged: (_) => EasyDebounce.debounce(
                    'confirmPasswordController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: !confirmPasswordVisibility,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
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
                    contentPadding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => confirmPasswordVisibility =
                            !confirmPasswordVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        confirmPasswordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Color(0xFF757575),
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
                      return 'Please enter confirm password';
                    }
                    if (val.length < 6) {
                      return 'Password should be min 6 character long';
                    }

                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 30, 24, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    var _shouldSetState = false;
                    if (formKey.currentState == null ||
                        !formKey.currentState!.validate()) {
                      return;
                    }

                    if (passwordController!.text ==
                        confirmPasswordController!.text) {
                      signupResponse = await SignUpApiCall.call(
                        password: passwordController!.text,
                        userEmail: emailAddressController!.text,
                        username: usernameController!.text,
                      );
                      _shouldSetState = true;
                    } else {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('SEND IT'),
                            content: Text(
                                'Passsword  &  Confirm Passsword mismatch '),
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

                    if (getJsonField(
                      (signupResponse?.jsonBody ?? ''),
                      r'''$.status''',
                    )) {
                      Navigator.pop(context);
                    } else {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('SEND IT'),
                            content: Text(
                                'An account is already registered with your email address.'),
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
                  text: 'Register',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 56,
                    color: Color(0xFF0A263D),
                    textStyle: TextStyle(
                      fontFamily: 'Cera Pro',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have  an account?',
                      textAlign: TextAlign.start,
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
                        Navigator.pop(context);
                      },
                      text: 'Login',
                      options: FFButtonOptions(
                        width: 70,
                        height: 40,
                        color: Color(0x004B39EF),
                        textStyle: TextStyle(
                          color: FlutterFlowTheme.of(context).black600,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        elevation: 0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 0,
                        ),
                      ),
                      showLoadingIndicator: false,
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

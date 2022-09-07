import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../new_password_v_c/new_password_v_c_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordVCWidget extends StatefulWidget {
  const ForgotPasswordVCWidget({Key? key}) : super(key: key);

  @override
  _ForgotPasswordVCWidgetState createState() => _ForgotPasswordVCWidgetState();
}

class _ForgotPasswordVCWidgetState extends State<ForgotPasswordVCWidget> {
  TextEditingController? emailAddressController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 0, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).black600,
                size: 30,
              ),
              onPressed: () async {
                // btnBack
                Navigator.pop(context);
              },
            ),
          ),
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Text(
                'Forgot Your Password?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Color(0xFF192126),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
              child: Text(
                'Type your email address and we will send the verification code.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Color(0xB3192126),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 32, 24, 0),
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
                  hintText: 'EMAIL',
                  hintStyle: TextStyle(
                    fontFamily: 'Cera Pro',
                    color: Color(0xFF9EA3AE),
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
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
                    return 'Please enter email';
                  }

                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  if (formKey.currentState == null ||
                      !formKey.currentState!.validate()) {
                    return;
                  }

                  // btnSubmit
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewPasswordVCWidget(),
                    ),
                  );
                },
                text: 'Reset Password\n',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 56,
                  color: Color(0xFF1A3555),
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
                showLoadingIndicator: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

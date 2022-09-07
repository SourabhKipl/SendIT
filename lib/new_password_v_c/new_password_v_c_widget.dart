import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPasswordVCWidget extends StatefulWidget {
  const NewPasswordVCWidget({Key? key}) : super(key: key);

  @override
  _NewPasswordVCWidgetState createState() => _NewPasswordVCWidgetState();
}

class _NewPasswordVCWidgetState extends State<NewPasswordVCWidget> {
  TextEditingController? txtConfirmPasswordController;
  late bool txtConfirmPasswordVisibility;
  TextEditingController? txtNewPasswordController;
  late bool txtNewPasswordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    txtConfirmPasswordController = TextEditingController();
    txtConfirmPasswordVisibility = false;
    txtNewPasswordController = TextEditingController();
    txtNewPasswordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
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
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Text(
                        'New Password',
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
                        'Create your new password to login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Cera Pro',
                          color: Color(0xB3192126),
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 32, 24, 0),
                      child: TextFormField(
                        controller: txtNewPasswordController,
                        onChanged: (_) => EasyDebounce.debounce(
                          'txtNewPasswordController',
                          Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        autofocus: true,
                        obscureText: !txtNewPasswordVisibility,
                        decoration: InputDecoration(
                          hintText: 'NEW PASSWORD',
                          hintStyle: TextStyle(
                            fontFamily: 'Cera Pro',
                            color: Color(0xFF9EA3AE),
                            fontWeight: FontWeight.w500,
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
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => txtNewPasswordVisibility =
                                  !txtNewPasswordVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              txtNewPasswordVisibility
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
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                      child: TextFormField(
                        controller: txtConfirmPasswordController,
                        onChanged: (_) => EasyDebounce.debounce(
                          'txtConfirmPasswordController',
                          Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        autofocus: true,
                        obscureText: !txtConfirmPasswordVisibility,
                        decoration: InputDecoration(
                          hintText: 'CONFIRM PASSWORD',
                          hintStyle: TextStyle(
                            fontFamily: 'Cera Pro',
                            color: Color(0xFF9EA3AE),
                            fontWeight: FontWeight.w500,
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
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => txtConfirmPasswordVisibility =
                                  !txtConfirmPasswordVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              txtConfirmPasswordVisibility
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
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 40, 24, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (formKey.currentState == null ||
                              !formKey.currentState!.validate()) {
                            return;
                          }

                          Navigator.pop(context);
                        },
                        text: 'Create Password\n',
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
            ],
          ),
        ),
      ),
    );
  }
}

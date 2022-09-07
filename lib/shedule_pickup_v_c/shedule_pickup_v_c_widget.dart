import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShedulePickupVCWidget extends StatefulWidget {
  const ShedulePickupVCWidget({Key? key}) : super(key: key);

  @override
  _ShedulePickupVCWidgetState createState() => _ShedulePickupVCWidgetState();
}

class _ShedulePickupVCWidgetState extends State<ShedulePickupVCWidget> {
  TextEditingController? txtDateController1;
  TextEditingController? txtEmailController;
  TextEditingController? txtFirstNameController;
  TextEditingController? txtLastNameController;
  TextEditingController? txtPhoneController;
  TextEditingController? txtDateController2;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    txtDateController1 = TextEditingController();
    txtEmailController = TextEditingController();
    txtFirstNameController = TextEditingController();
    txtLastNameController = TextEditingController();
    txtPhoneController = TextEditingController();
    txtDateController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF0A263D),
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'Schdule Pick up',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Text(
                      'To schedule a pick up, please take the time to fill out the information below',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF5A5A5A),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 0),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0x00090F13),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'First Name',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).black600,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: TextFormField(
                              controller: txtFirstNameController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'txtFirstNameController',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: 'First Name',
                                hintStyle: TextStyle(
                                  color: FlutterFlowTheme.of(context).grayIcon,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return 'Please enter first name';
                                }

                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0x00090F13),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Last Name',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).black600,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: TextFormField(
                              controller: txtLastNameController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'txtLastNameController',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: 'Last Name',
                                hintStyle: TextStyle(
                                  color: FlutterFlowTheme.of(context).grayIcon,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return 'Please enter last name';
                                }

                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0x00090F13),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email*',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).black600,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: TextFormField(
                              controller: txtEmailController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'txtEmailController',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: 'Email Address',
                                hintStyle: TextStyle(
                                  color: FlutterFlowTheme.of(context).grayIcon,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
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
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0x00090F13),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).black600,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: TextFormField(
                              controller: txtPhoneController,
                              onChanged: (_) => EasyDebounce.debounce(
                                'txtPhoneController',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: 'Phone',
                                hintStyle: TextStyle(
                                  color: FlutterFlowTheme.of(context).grayIcon,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                              keyboardType: TextInputType.phone,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return 'Please enter phone number';
                                }

                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0x00090F13),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select a date',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).black600,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: TextFormField(
                              controller: txtDateController1,
                              onChanged: (_) => EasyDebounce.debounce(
                                'txtDateController1',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: 'DD-MM-YYYY',
                                hintStyle: TextStyle(
                                  color: FlutterFlowTheme.of(context).grayIcon,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                suffixIcon: Icon(
                                  Icons.date_range_rounded,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return 'Please select date';
                                }

                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0x00090F13),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select a date',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).black600,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: TextFormField(
                              controller: txtDateController2,
                              onChanged: (_) => EasyDebounce.debounce(
                                'txtDateController2',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: 'DD-MM-YYYY',
                                hintStyle: TextStyle(
                                  color: FlutterFlowTheme.of(context).grayIcon,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                suffixIcon: Icon(
                                  Icons.date_range_rounded,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return 'Please select date';
                                }

                                return null;
                              },
                            ),
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
      ),
    );
  }
}

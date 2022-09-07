import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../pickup_method_v_c/pickup_method_v_c_widget.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PickupDetailVCWidget extends StatefulWidget {
  const PickupDetailVCWidget({
    Key? key,
    this.isEdit,
  }) : super(key: key);

  final bool? isEdit;

  @override
  _PickupDetailVCWidgetState createState() => _PickupDetailVCWidgetState();
}

class _PickupDetailVCWidgetState extends State<PickupDetailVCWidget> {
  TextEditingController? txtCityController;
  TextEditingController? txtZipController;
  TextEditingController? txtCountryController;
  TextEditingController? txtFullNameController;
  TextEditingController? txtStreetAddressController;
  TextEditingController? txtSecondController;
  TextEditingController? txtInstructionController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    txtCityController = TextEditingController(text: FFAppState().pickCity);
    txtZipController = TextEditingController(text: FFAppState().pickZip);
    txtCountryController =
        TextEditingController(text: FFAppState().pickupContact);
    txtFullNameController =
        TextEditingController(text: FFAppState().pickupName);
    txtStreetAddressController =
        TextEditingController(text: FFAppState().pickupStreetAddress);
    txtSecondController = TextEditingController(text: FFAppState().pickOffice);
    txtInstructionController =
        TextEditingController(text: FFAppState().pickInstrucation);
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
                  height: 597,
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
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      18, 18, 0, 0),
                                  child: Text(
                                    'Step 2',
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
                                      18, 10, 0, 0),
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
                                      18, 5, 0, 0),
                                  child: Text(
                                    'Tell us more about yourself and your \npickup address',
                                    style: TextStyle(
                                      fontFamily: 'Cera Pro',
                                      color: Color(0xFFAEE3EF),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      28, 10, 0, 0),
                                  child: Text(
                                    'What are your contact details?',
                                    style: TextStyle(
                                      fontFamily: 'Cera Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 20, 0),
                                  child: TextFormField(
                                    controller: txtFullNameController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'txtFullNameController',
                                      Duration(milliseconds: 2000),
                                      () async {
                                        setState(() => FFAppState().pickupName =
                                            txtFullNameController!.text);
                                      },
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      hintText: 'Full Name',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        color: Color(0x80979797),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
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
                                      color:
                                          FlutterFlowTheme.of(context).black600,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                    validator: (val) {
                                      if (val == null || val.isEmpty) {
                                        return 'Please enter full name';
                                      }
                                      if (val.length < 1) {
                                        return 'Requires at least 1 characters.';
                                      }

                                      return null;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 12, 20, 0),
                                  child: TextFormField(
                                    controller: txtCountryController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'txtCountryController',
                                      Duration(milliseconds: 2000),
                                      () async {
                                        setState(() =>
                                            FFAppState().pickupContact =
                                                txtCountryController!.text);
                                      },
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      hintText: 'Contact Number',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        color: Color(0x80979797),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
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
                                      color:
                                          FlutterFlowTheme.of(context).black600,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                    validator: (val) {
                                      if (val == null || val.isEmpty) {
                                        return 'Please enter country code';
                                      }
                                      if (val.length < 1) {
                                        return 'Requires at least 1 characters.';
                                      }

                                      return null;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      28, 13, 0, 0),
                                  child: Text(
                                    'What is your pickup address?',
                                    style: TextStyle(
                                      fontFamily: 'Cera Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 20, 0),
                                  child: TextFormField(
                                    controller: txtStreetAddressController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'txtStreetAddressController',
                                      Duration(milliseconds: 2000),
                                      () async {
                                        setState(() => FFAppState()
                                                .pickupStreetAddress =
                                            txtStreetAddressController!.text);
                                      },
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      hintText: 'Street Address',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        color: Color(0x80000000),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
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
                                      color:
                                          FlutterFlowTheme.of(context).black600,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                    validator: (val) {
                                      if (val == null || val.isEmpty) {
                                        return 'Please enter street address';
                                      }
                                      if (val.length < 1) {
                                        return 'Requires at least 1 characters.';
                                      }

                                      return null;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 14, 20, 0),
                                  child: TextFormField(
                                    controller: txtSecondController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'txtSecondController',
                                      Duration(milliseconds: 2000),
                                      () async {
                                        setState(() => FFAppState().pickOffice =
                                            txtSecondController!.text);
                                      },
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      hintText: 'Office, Suite, Apt.',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        color: Color(0x80000000),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
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
                                      color:
                                          FlutterFlowTheme.of(context).black600,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 16, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          child: TextFormField(
                                            controller: txtCityController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'txtCityController',
                                              Duration(milliseconds: 2000),
                                              () async {
                                                setState(() => FFAppState()
                                                        .pickCity =
                                                    txtCityController!.text);
                                              },
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              hintText: 'City',
                                              hintStyle: TextStyle(
                                                fontFamily: 'Cera Pro',
                                                color: Color(0x80000000),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFE5E6EB),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFE5E6EB),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              filled: true,
                                              fillColor: Color(0xFFF9FAFB),
                                            ),
                                            style: TextStyle(
                                              fontFamily: 'Cera Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .black600,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                            validator: (val) {
                                              if (val == null || val.isEmpty) {
                                                return 'Please enter city';
                                              }
                                              if (val.length < 1) {
                                                return 'Requires at least 1 characters.';
                                              }

                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  13, 0, 0, 0),
                                          child: TextFormField(
                                            controller: txtZipController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'txtZipController',
                                              Duration(milliseconds: 2000),
                                              () async {
                                                setState(() =>
                                                    FFAppState().pickZip =
                                                        txtZipController!.text);
                                              },
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              hintText: 'Zip',
                                              hintStyle: TextStyle(
                                                fontFamily: 'Cera Pro',
                                                color: Color(0x80000000),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFE5E6EB),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFE5E6EB),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              filled: true,
                                              fillColor: Color(0xFFF9FAFB),
                                            ),
                                            style: TextStyle(
                                              fontFamily: 'Cera Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .black600,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                            validator: (val) {
                                              if (val == null || val.isEmpty) {
                                                return 'Please enter zip code';
                                              }
                                              if (val.length < 1) {
                                                return 'Requires at least 1 characters.';
                                              }

                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      28, 13, 0, 0),
                                  child: Text(
                                    'Any special instructions?',
                                    style: TextStyle(
                                      fontFamily: 'Cera Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 20, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Color(0x00101213),
                                    ),
                                    child: TextFormField(
                                      controller: txtInstructionController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'txtInstructionController',
                                        Duration(milliseconds: 2000),
                                        () async {
                                          setState(() => FFAppState()
                                                  .pickInstrucation =
                                              txtInstructionController!.text);
                                        },
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText:
                                            'i.e. building access code, location of door, etc.',
                                        hintStyle: TextStyle(
                                          fontFamily: 'Cera Pro',
                                          color: Color(0x80000000),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFE5E6EB),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFE5E6EB),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFF9FAFB),
                                      ),
                                      style: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .black600,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                      maxLines: 3,
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
                    if (formKey.currentState == null ||
                        !formKey.currentState!.validate()) {
                      return;
                    }

                    if (widget.isEdit!) {
                      Navigator.pop(context);
                      return;
                    } else {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PickupMethodVCWidget(
                            isEdit: false,
                          ),
                        ),
                      );
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

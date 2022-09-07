import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_credit_card_form.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../payment_web_v_c/payment_web_v_c_widget.dart';
import '../pickup_date_v_c/pickup_date_v_c_widget.dart';
import '../pickup_detail_v_c/pickup_detail_v_c_widget.dart';
import '../pickup_method_v_c/pickup_method_v_c_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutVCWidget extends StatefulWidget {
  const CheckoutVCWidget({Key? key}) : super(key: key);

  @override
  _CheckoutVCWidgetState createState() => _CheckoutVCWidgetState();
}

class _CheckoutVCWidgetState extends State<CheckoutVCWidget> {
  ApiCallResponse? orderPlaceResponse;
  final creditCardFormKey = GlobalKey<FormState>();
  CreditCardModel creditCardInfo = emptyCreditCard();
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
                        color: Color(0xFFAEE3EF),
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '5',
                          style: TextStyle(
                            fontFamily: 'Cera Pro',
                            color: FlutterFlowTheme.of(context).black600,
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
                  height: 920,
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
                                    'Step 5',
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
                                      19, 15, 0, 0),
                                  child: Text(
                                    'Checkout',
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
                                      19, 9, 0, 0),
                                  child: Text(
                                    FFAppState().pickMethod,
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
                                      19, 17, 12, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/info.png',
                                        width: 33,
                                        height: 33,
                                        fit: BoxFit.cover,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 8, 0),
                                          child: AutoSizeText(
                                            '${FFAppState().pickupName} | ${FFAppState().pickupContact} ${FFAppState().pickupStreetAddress}, ${FFAppState().pickOffice}, ${FFAppState().pickCity} ${FFAppState().pickZip}  ${FFAppState().pickInstrucation}',
                                            textAlign: TextAlign.start,
                                            maxLines: 10,
                                            style: TextStyle(
                                              fontFamily: 'Cera Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PickupDetailVCWidget(
                                                isEdit: true,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Image.asset(
                                              'assets/images/pen.png',
                                              width: 15,
                                              height: 17,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      64, 22, 23, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFAEE3EF),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      19, 17, 12, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/calendar.png',
                                        width: 33,
                                        height: 33,
                                        fit: BoxFit.cover,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 8, 8, 0),
                                          child: AutoSizeText(
                                            'Pickup date: ${dateTimeFormat('MMMEd', FFAppState().pickupDate)}',
                                            textAlign: TextAlign.start,
                                            maxLines: 5,
                                            style: TextStyle(
                                              fontFamily: 'Cera Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PickupDateVCWidget(
                                                isEdit: true,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Image.asset(
                                              'assets/images/pen.png',
                                              width: 15,
                                              height: 17,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      64, 2, 23, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFAEE3EF),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      19, 17, 12, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/pickup.png',
                                        width: 33,
                                        height: 33,
                                        fit: BoxFit.cover,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 8, 8, 0),
                                          child: AutoSizeText(
                                            'Pickup method: ${FFAppState().pickMethod}',
                                            textAlign: TextAlign.start,
                                            maxLines: 5,
                                            style: TextStyle(
                                              fontFamily: 'Cera Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PickupMethodVCWidget(
                                                isEdit: true,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Image.asset(
                                              'assets/images/pen.png',
                                              width: 15,
                                              height: 17,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      64, 2, 23, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFAEE3EF),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      19, 26, 0, 0),
                                  child: Text(
                                    'Package summary',
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
                                      62, 17, 12, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/Frame@3x.png',
                                        width: 33,
                                        height: 33,
                                        fit: BoxFit.cover,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 8, 8, 0),
                                          child: AutoSizeText(
                                            'Total Packages: 1',
                                            textAlign: TextAlign.start,
                                            maxLines: 5,
                                            style: TextStyle(
                                              fontFamily: 'Cera Pro',
                                              color: Color(0xFFAEE3EF),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Image.asset(
                                            'assets/images/pen.png',
                                            width: 15,
                                            height: 17,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      64, 2, 23, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFAEE3EF),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: '+ Add a package',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 40,
                                        color: Color(0x004B39EF),
                                        textStyle: TextStyle(
                                          fontFamily: 'Cera Pro',
                                          color: Color(0xFF64BED2),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                        elevation: 0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      19, 16, 0, 0),
                                  child: Container(
                                    width: 292,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/images/cardView.png',
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  14, 13, 0, 0),
                                          child: Text(
                                            'Order summary',
                                            style: TextStyle(
                                              fontFamily: 'Cera Pro',
                                              color: Color(0xFFAEE3EF),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(26, 44, 0, 0),
                                              child: Text(
                                                '${getJsonField(
                                                  FFAppState().planSelectedObj,
                                                  r'''$.product_name''',
                                                ).toString()}          \$${getJsonField(
                                                  FFAppState().planSelectedObj,
                                                  r'''$.product_price''',
                                                ).toString()}',
                                                style: TextStyle(
                                                  fontFamily: 'Cera Pro',
                                                  color: Color(0xFFAEE3EF),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(26, 12, 0, 0),
                                              child: Text(
                                                'Total              \$${getJsonField(
                                                  FFAppState().planSelectedObj,
                                                  r'''$.product_price''',
                                                ).toString()}',
                                                style: TextStyle(
                                                  fontFamily: 'Cera Pro',
                                                  color: Color(0xFFAEE3EF),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      19, 21, 0, 0),
                                  child: Text(
                                    'Payment Method:',
                                    style: TextStyle(
                                      fontFamily: 'Cera Pro',
                                      color: Color(0xFFAEE3EF),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Form(
                                  key: formKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 19, 12, 0),
                                    child: FlutterFlowCreditCardForm(
                                      formKey: creditCardFormKey,
                                      creditCardModel: creditCardInfo,
                                      obscureNumber: false,
                                      obscureCvv: true,
                                      spacing: 12,
                                      textStyle: TextStyle(
                                        fontFamily: 'Cera Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),
                                      inputDecoration: InputDecoration(
                                        filled: true,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 0),
                                    child: Container(
                                      width: 197,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.asset(
                                            'assets/images/confirmBG.png',
                                          ).image,
                                        ),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(19, 12, 0, 0),
                                              child: Text(
                                                'Confirm pickup',
                                                style: TextStyle(
                                                  fontFamily: 'Cera Pro',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                var _shouldSetState = false;
                                                orderPlaceResponse =
                                                    await OrderPlaceCall.call(
                                                  pickupDate: functions
                                                      .dateConvertString(
                                                          FFAppState()
                                                              .pickupDate!),
                                                  fullName:
                                                      FFAppState().pickupName,
                                                  contactNumber: FFAppState()
                                                      .pickupContact,
                                                  streetAddress: FFAppState()
                                                      .pickupStreetAddress,
                                                  officeName:
                                                      FFAppState().pickOffice,
                                                  city: FFAppState().pickCity,
                                                  zipCode: FFAppState().pickZip,
                                                  instructions: FFAppState()
                                                      .pickInstrucation,
                                                  pickupMethod:
                                                      FFAppState().pickMethod,
                                                  selectedPlan: getJsonField(
                                                    FFAppState()
                                                        .planSelectedObj,
                                                    r'''$.product_id''',
                                                  ).toString(),
                                                  ccn: '4242424242424242',
                                                  ccm: '12',
                                                  ccy: '2024',
                                                  ccv: '123',
                                                  apiKey:
                                                      valueOrDefault<String>(
                                                    getJsonField(
                                                      FFAppState().logResponse,
                                                      r'''$.access_token''',
                                                    ).toString(),
                                                    'NA',
                                                  ),
                                                );
                                                _shouldSetState = true;
                                                if (getJsonField(
                                                  (orderPlaceResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.status''',
                                                )) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text('Send IT'),
                                                        content: Text(
                                                            'Order Created successfully'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          PaymentWebVCWidget(
                                                        orderID: valueOrDefault<
                                                            String>(
                                                          getJsonField(
                                                            (orderPlaceResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.data''',
                                                          ).toString(),
                                                          'NA',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  return;
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text('Send IT'),
                                                        content: Text(
                                                            'Something went wrong'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  return;
                                                }

                                                if (_shouldSetState)
                                                  setState(() {});
                                              },
                                              text: '',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: double.infinity,
                                                color: Color(0x004B39EF),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
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
                      ),
                    ],
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

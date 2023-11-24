import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_h_c_model.dart';
export 'edit_h_c_model.dart';

class EditHCWidget extends StatefulWidget {
  const EditHCWidget({
    Key? key,
    this.motivo,
    this.fecha,
    this.diagnostico,
  }) : super(key: key);

  final String? motivo;
  final DateTime? fecha;
  final String? diagnostico;

  @override
  _EditHCWidgetState createState() => _EditHCWidgetState();
}

class _EditHCWidgetState extends State<EditHCWidget> {
  late EditHCModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditHCModel());

    _model.motivoController ??= TextEditingController(text: widget.motivo);
    _model.motivoFocusNode ??= FocusNode();

    _model.textController2 ??= TextEditingController(text: widget.diagnostico);
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        tablet: false,
        tabletLandscape: false,
        desktop: false,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.00, 1.00),
        child: Container(
          width: double.infinity,
          height: 400.0,
          decoration: BoxDecoration(
            color: Color(0xFFD9D9D9),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
          ),
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 75.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF05A8EB),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                              ),
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: Text(
                                'Motivo',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Antipasto_Regular',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            TextFormField(
                              controller: _model.motivoController,
                              focusNode: _model.motivoFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.motivoController',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              textCapitalization: TextCapitalization.none,
                              textInputAction: TextInputAction.done,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Motivo de consulta...',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Antipasto_Regular',
                                      fontSize: 20.0,
                                      useGoogleFonts: false,
                                    ),
                                errorStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Antipasto_Regular',
                                      color: Color(0xFFDB4A39),
                                      fontSize: 16.0,
                                      useGoogleFonts: false,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF05A8EB),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                suffixIcon:
                                    _model.motivoController!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.motivoController?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFF757575),
                                              size: 16.0,
                                            ),
                                          )
                                        : null,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Antipasto_Regular',
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    useGoogleFonts: false,
                                  ),
                              maxLength: 15,
                              maxLengthEnforcement: MaxLengthEnforcement.none,
                              buildCounter: (context,
                                      {required currentLength,
                                      required isFocused,
                                      maxLength}) =>
                                  null,
                              validator: _model.motivoControllerValidator
                                  .asValidator(context),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 75.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFDB4A39),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0),
                                    ),
                                  ),
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Text(
                                    'Fecha',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Antipasto_Regular',
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Container(
                                  width: 150.0,
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Stack(
                                    children: [
                                      if (dateTimeFormat(
                                                'yMMMd',
                                                _model.datePicked,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ) ==
                                              null ||
                                          dateTimeFormat(
                                                'yMMMd',
                                                _model.datePicked,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ) ==
                                              '')
                                        Text(
                                          dateTimeFormat(
                                            'yMMMd',
                                            widget.fecha,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Antipasto_Regular',
                                                color: Colors.black,
                                                fontSize: 20.0,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      if (dateTimeFormat(
                                                'yMMMd',
                                                widget.fecha,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ) !=
                                              null &&
                                          dateTimeFormat(
                                                'yMMMd',
                                                widget.fecha,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ) !=
                                              '')
                                        Text(
                                          dateTimeFormat(
                                            'yMMMd',
                                            _model.datePicked,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Antipasto_Regular',
                                                color: Colors.black,
                                                fontSize: 20.0,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                final _datePickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: DateTime(1900),
                                  lastDate: getCurrentTimestamp,
                                );

                                if (_datePickedDate != null) {
                                  safeSetState(() {
                                    _model.datePicked = DateTime(
                                      _datePickedDate.year,
                                      _datePickedDate.month,
                                      _datePickedDate.day,
                                    );
                                  });
                                }
                              },
                              text: 'Fecha',
                              icon: Icon(
                                Icons.calendar_month,
                                color: Colors.white,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: 150.0,
                                height: 45.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFDB4A39),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Antipasto_Regular',
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      useGoogleFonts: false,
                                    ),
                                elevation: 4.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(90.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 90.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFF9B50),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                              ),
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: Text(
                                'Diagnóstico',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Antipasto_Regular',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            TextFormField(
                              controller: _model.textController2,
                              focusNode: _model.textFieldFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textController2',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              textCapitalization: TextCapitalization.none,
                              textInputAction: TextInputAction.done,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.black,
                                      fontSize: 20.0,
                                    ),
                                hintText: 'Descripción (Opcional)...',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Antipasto_Regular',
                                      fontSize: 20.0,
                                      useGoogleFonts: false,
                                    ),
                                errorStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Antipasto_Regular',
                                      color: Color(0xFFDB4A39),
                                      fontSize: 16.0,
                                      useGoogleFonts: false,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF05A8EB),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                suffixIcon:
                                    _model.textController2!.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.textController2?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFF757575),
                                              size: 16.0,
                                            ),
                                          )
                                        : null,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Antipasto_Regular',
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    useGoogleFonts: false,
                                  ),
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        if (_model.formKey.currentState == null ||
                            !_model.formKey.currentState!.validate()) {
                          return;
                        }
                        _model.singleDelteHCQuery =
                            await queryClinicaRecordOnce(
                          queryBuilder: (clinicaRecord) => clinicaRecord
                              .where(
                                'userID',
                                isEqualTo: currentUserReference,
                              )
                              .where(
                                'mascotaid',
                                isEqualTo: FFAppState().currentMascotaID,
                              )
                              .where(
                                'motivo',
                                isEqualTo: widget.motivo,
                              )
                              .where(
                                'fecha',
                                isEqualTo: widget.fecha,
                              )
                              .where(
                                'diagnostico',
                                isEqualTo: widget.diagnostico,
                              ),
                          singleRecord: true,
                        ).then((s) => s.firstOrNull);
                        await _model.singleDelteHCQuery!.reference.delete();
                        Navigator.pop(context);

                        setState(() {});
                      },
                      text: 'Eliminar',
                      icon: Icon(
                        Icons.delete_rounded,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        width: 150.0,
                        height: 45.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFFDB4A39),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Antipasto_Regular',
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                        elevation: 4.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(180.0),
                      ),
                    ),
                    Flexible(
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          _model.singleUpdateHCQuery =
                              await queryClinicaRecordOnce(
                            queryBuilder: (clinicaRecord) => clinicaRecord
                                .where(
                                  'userID',
                                  isEqualTo: currentUserReference,
                                )
                                .where(
                                  'mascotaid',
                                  isEqualTo: FFAppState().currentMascotaID,
                                )
                                .where(
                                  'motivo',
                                  isEqualTo: widget.motivo,
                                )
                                .where(
                                  'fecha',
                                  isEqualTo: widget.fecha,
                                )
                                .where(
                                  'diagnostico',
                                  isEqualTo: widget.diagnostico,
                                ),
                            singleRecord: true,
                          ).then((s) => s.firstOrNull);

                          await _model.singleUpdateHCQuery!.reference
                              .update(createClinicaRecordData(
                            motivo: _model.motivoController.text,
                            diagnostico: _model.textController2.text,
                            fecha: dateTimeFormat(
                                          'yMMMd',
                                          widget.fecha,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ) !=
                                        null &&
                                    dateTimeFormat(
                                          'yMMMd',
                                          widget.fecha,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ) !=
                                        ''
                                ? _model.datePicked
                                : widget.fecha,
                          ));
                          Navigator.pop(context);

                          setState(() {});
                        },
                        text: 'Actualizar',
                        icon: Icon(
                          Icons.cached,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 45.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF05A8EB),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Antipasto_Regular',
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                          elevation: 4.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(180.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 20.0)).around(SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}

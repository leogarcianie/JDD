import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'eliminar_recordatorio_model.dart';
export 'eliminar_recordatorio_model.dart';

class EliminarRecordatorioWidget extends StatefulWidget {
  const EliminarRecordatorioWidget({
    Key? key,
    this.idRecord,
  }) : super(key: key);

  final int? idRecord;

  @override
  _EliminarRecordatorioWidgetState createState() =>
      _EliminarRecordatorioWidgetState();
}

class _EliminarRecordatorioWidgetState
    extends State<EliminarRecordatorioWidget> {
  late EliminarRecordatorioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EliminarRecordatorioModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.00, 0.00),
      child: StreamBuilder<List<RecordatoriosRecord>>(
        stream: queryRecordatoriosRecord(
          queryBuilder: (recordatoriosRecord) => recordatoriosRecord.where(
            'idRecordatorio',
            isEqualTo: widget.idRecord,
          ),
          singleRecord: true,
        ),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitPumpingHeart(
                  color: Color(0xFF05A8EB),
                  size: 50.0,
                ),
              ),
            );
          }
          List<RecordatoriosRecord> containerRecordatoriosRecordList =
              snapshot.data!;
          if (snapshot.data!.isEmpty) {
            return Container();
          }
          final containerRecordatoriosRecord =
              containerRecordatoriosRecordList.isNotEmpty
                  ? containerRecordatoriosRecordList.first
                  : null;
          return Container(
            width: 300.0,
            height: 150.0,
            decoration: BoxDecoration(
              color: Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(32.0),
            ),
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Container(
                    width: 250.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFDB4A39),
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Text(
                      '¿Elimnar Recordatorio?',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Antipasto_Regular',
                            color: Colors.white,
                            fontSize: 24.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          setState(() {
                            FFAppState().currentRecord = 0;
                          });
                          Navigator.pop(context);
                        },
                        text: 'Cancelar',
                        options: FFButtonOptions(
                          width: 125.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF05A8EB),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Antipasto_Regular',
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          await containerRecordatoriosRecord!.reference
                              .delete();
                          setState(() {
                            FFAppState().currentRecord = 0;
                          });
                          Navigator.pop(context);
                        },
                        text: 'Eliminar',
                        options: FFButtonOptions(
                          width: 125.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFDB4A39),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Antipasto_Regular',
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ].divide(SizedBox(height: 25.0)),
            ),
          );
        },
      ),
    );
  }
}

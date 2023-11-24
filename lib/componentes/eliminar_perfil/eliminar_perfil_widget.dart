import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'eliminar_perfil_model.dart';
export 'eliminar_perfil_model.dart';

class EliminarPerfilWidget extends StatefulWidget {
  const EliminarPerfilWidget({
    Key? key,
    this.idMascota,
  }) : super(key: key);

  final int? idMascota;

  @override
  _EliminarPerfilWidgetState createState() => _EliminarPerfilWidgetState();
}

class _EliminarPerfilWidgetState extends State<EliminarPerfilWidget> {
  late EliminarPerfilModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EliminarPerfilModel());
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
      child: StreamBuilder<List<MascotasRecord>>(
        stream: queryMascotasRecord(
          queryBuilder: (mascotasRecord) => mascotasRecord.where(
            'mascotaID',
            isEqualTo: widget.idMascota,
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
          List<MascotasRecord> containerMascotasRecordList = snapshot.data!;
          if (snapshot.data!.isEmpty) {
            return Container();
          }
          final containerMascotasRecord = containerMascotasRecordList.isNotEmpty
              ? containerMascotasRecordList.first
              : null;
          return Material(
            color: Colors.transparent,
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
            child: Container(
              width: 300.0,
              height: 225.0,
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(0.0, 2.0),
                  )
                ],
                borderRadius: BorderRadius.circular(32.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFDB4A39),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(32.0),
                        topRight: Radius.circular(32.0),
                      ),
                    ),
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Text(
                      '¿Quieres eliminar el perfil?',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Antipasto_Regular',
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Text(
                      'Perfil de mascota, registro de vacunas, recordatorios e historias clínicas, se eliminaran permanentemente.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Antipasto_Regular',
                            color: Colors.black,
                            fontSize: 18.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: 'Cancelar',
                        options: FFButtonOptions(
                          width: 125.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
                            await containerMascotasRecord!.reference.delete();

                            context.goNamed(
                              'SeleccionMascota',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          text: 'Eliminar',
                          options: FFButtonOptions(
                            width: 125.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFDB4A39),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Antipasto_Regular',
                                  color: Colors.white,
                                  fontSize: 22.0,
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
                ].divide(SizedBox(height: 20.0)),
              ),
            ),
          );
        },
      ),
    );
  }
}

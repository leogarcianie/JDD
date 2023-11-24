import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/historias_empty/historias_empty_widget.dart';
import '/componentes/items/item_historia/item_historia_widget.dart';
import '/componentes/nav_bar1/nav_bar1_widget.dart';
import '/componentes/registro_historial_clinica/registro_historial_clinica_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'historias_model.dart';
export 'historias_model.dart';

class HistoriasWidget extends StatefulWidget {
  const HistoriasWidget({Key? key}) : super(key: key);

  @override
  _HistoriasWidgetState createState() => _HistoriasWidgetState();
}

class _HistoriasWidgetState extends State<HistoriasWidget> {
  late HistoriasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HistoriasModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Align(
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Container(
            width: 500.0,
            child: Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              FFIcons.kchecklistDocumentListPaper107939,
                              color: Color(0xFF05A8EB),
                              size: 48.0,
                            ),
                            Text(
                              'Historias Clinicas',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Antipasto_bold',
                                    color: Colors.black,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ].divide(SizedBox(width: 10.0)),
                        ),
                        Expanded(
                          child: StreamBuilder<List<ClinicaRecord>>(
                            stream: queryClinicaRecord(
                              queryBuilder: (clinicaRecord) => clinicaRecord
                                  .where(
                                    'mascotaid',
                                    isEqualTo: FFAppState().currentMascotaID,
                                  )
                                  .where(
                                    'userID',
                                    isEqualTo: currentUserReference,
                                  )
                                  .orderBy('fecha', descending: true),
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
                              List<ClinicaRecord> listViewClinicaRecordList =
                                  snapshot.data!;
                              if (listViewClinicaRecordList.isEmpty) {
                                return HistoriasEmptyWidget();
                              }
                              return ListView.separated(
                                padding: EdgeInsets.symmetric(vertical: 20.0),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewClinicaRecordList.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 20.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewClinicaRecord =
                                      listViewClinicaRecordList[listViewIndex];
                                  return ItemHistoriaWidget(
                                    key: Key(
                                        'Key48t_${listViewIndex}_of_${listViewClinicaRecordList.length}'),
                                    edad: FFAppState().currentEdad,
                                    peso: FFAppState().currentPeso,
                                    motivo: listViewClinicaRecord.motivo,
                                    diagnostico:
                                        listViewClinicaRecord.diagnostico,
                                    fecha: listViewClinicaRecord.fecha,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            wrapWithModel(
                              model: _model.navBar1Model,
                              updateCallback: () => setState(() {}),
                              child: NavBar1Widget(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.00, 1.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 100.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 360.0,
                      borderWidth: 0.0,
                      buttonSize: 65.0,
                      fillColor: Color(0xFF05A8EB),
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 32.0,
                      ),
                      onPressed: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () => _model.unfocusNode.canRequestFocus
                                  ? FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode)
                                  : FocusScope.of(context).unfocus(),
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: RegistroHistorialClinicaWidget(),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

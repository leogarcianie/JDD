import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/items/item_recordatorio/item_recordatorio_widget.dart';
import '/componentes/nav_bar1/nav_bar1_widget.dart';
import '/componentes/recordatorios_empty/recordatorios_empty_widget.dart';
import '/componentes/registro_recordatorio/registro_recordatorio_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'recordatorios_model.dart';
export 'recordatorios_model.dart';

class RecordatoriosWidget extends StatefulWidget {
  const RecordatoriosWidget({Key? key}) : super(key: key);

  @override
  _RecordatoriosWidgetState createState() => _RecordatoriosWidgetState();
}

class _RecordatoriosWidgetState extends State<RecordatoriosWidget> {
  late RecordatoriosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecordatoriosModel());
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
                              FFIcons.kbellAlarmIcon132786,
                              color: Color(0xFFFF9B50),
                              size: 40.0,
                            ),
                            Text(
                              'Recordatorios',
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
                          child: StreamBuilder<List<RecordatoriosRecord>>(
                            stream: queryRecordatoriosRecord(
                              queryBuilder: (recordatoriosRecord) =>
                                  recordatoriosRecord
                                      .where(
                                        'idusario',
                                        isEqualTo: currentUserReference,
                                      )
                                      .where(
                                        'idMascota',
                                        isEqualTo:
                                            FFAppState().currentMascotaID,
                                      )
                                      .orderBy('fecha'),
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
                              List<RecordatoriosRecord>
                                  listViewRecordatoriosRecordList =
                                  snapshot.data!;
                              if (listViewRecordatoriosRecordList.isEmpty) {
                                return RecordatoriosEmptyWidget();
                              }
                              return ListView.separated(
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                    listViewRecordatoriosRecordList.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 10.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewRecordatoriosRecord =
                                      listViewRecordatoriosRecordList[
                                          listViewIndex];
                                  return ItemRecordatorioWidget(
                                    key: Key(
                                        'Keyd78_${listViewIndex}_of_${listViewRecordatoriosRecordList.length}'),
                                    tarea: listViewRecordatoriosRecord.tarea,
                                    fechaProgramada:
                                        listViewRecordatoriosRecord.fecha,
                                    idMascota:
                                        listViewRecordatoriosRecord.idMascota,
                                    idRecord: listViewRecordatoriosRecord
                                        .idRecordatorio,
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
                      fillColor: Color(0xFFFF9B50),
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
                                child: RegistroRecordatorioWidget(),
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

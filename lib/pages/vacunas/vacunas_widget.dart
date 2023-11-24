import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/items/item_vacuna/item_vacuna_widget.dart';
import '/componentes/nav_bar1/nav_bar1_widget.dart';
import '/componentes/registro_vacuna/registro_vacuna_widget.dart';
import '/componentes/vacunas_empty/vacunas_empty_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vacunas_model.dart';
export 'vacunas_model.dart';

class VacunasWidget extends StatefulWidget {
  const VacunasWidget({Key? key}) : super(key: key);

  @override
  _VacunasWidgetState createState() => _VacunasWidgetState();
}

class _VacunasWidgetState extends State<VacunasWidget> {
  late VacunasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VacunasModel());
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
                              FFIcons.kvaccineIcon142648,
                              color: Color(0xFFDB4A39),
                              size: 48.0,
                            ),
                            Text(
                              'Vacunas',
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
                          child: StreamBuilder<List<VacunasRecord>>(
                            stream: queryVacunasRecord(
                              queryBuilder: (vacunasRecord) => vacunasRecord
                                  .where(
                                    'mascotaID',
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
                              List<VacunasRecord> listViewVacunasRecordList =
                                  snapshot.data!;
                              if (listViewVacunasRecordList.isEmpty) {
                                return VacunasEmptyWidget();
                              }
                              return ListView.separated(
                                padding: EdgeInsets.symmetric(vertical: 20.0),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewVacunasRecordList.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 20.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewVacunasRecord =
                                      listViewVacunasRecordList[listViewIndex];
                                  return ItemVacunaWidget(
                                    key: Key(
                                        'Keygu1_${listViewIndex}_of_${listViewVacunasRecordList.length}'),
                                    acronimo: listViewVacunasRecord.acronimo,
                                    fecha: listViewVacunasRecord.fecha,
                                    detalles: listViewVacunasRecord.descripcion,
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
                      buttonSize: 65.0,
                      fillColor: Color(0xFFDB4A39),
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
                                child: RegistroVacunaWidget(),
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

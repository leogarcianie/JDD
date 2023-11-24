import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/items/item_perfil_mascota/item_perfil_mascota_widget.dart';
import '/componentes/mascotas_empty/mascotas_empty_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'seleccion_mascota_model.dart';
export 'seleccion_mascota_model.dart';

class SeleccionMascotaWidget extends StatefulWidget {
  const SeleccionMascotaWidget({Key? key}) : super(key: key);

  @override
  _SeleccionMascotaWidgetState createState() => _SeleccionMascotaWidgetState();
}

class _SeleccionMascotaWidgetState extends State<SeleccionMascotaWidget> {
  late SeleccionMascotaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeleccionMascotaModel());
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Escoge a tu mascota',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Antipasto_bold',
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      useGoogleFonts: false,
                    ),
              ),
              Container(
                height: 200.0,
                child: Stack(
                  children: [
                    StreamBuilder<List<MascotasRecord>>(
                      stream: queryMascotasRecord(
                        queryBuilder: (mascotasRecord) => mascotasRecord.where(
                          'userID',
                          isEqualTo: currentUserReference,
                        ),
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
                        List<MascotasRecord> listViewMascotasRecordList =
                            snapshot.data!;
                        if (listViewMascotasRecordList.isEmpty) {
                          return MascotasEmptyWidget();
                        }
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: listViewMascotasRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewMascotasRecord =
                                listViewMascotasRecordList[listViewIndex];
                            return ItemPerfilMascotaWidget(
                              key: Key(
                                  'Key1g4_${listViewIndex}_of_${listViewMascotasRecordList.length}'),
                              parameter1: listViewMascotasRecord.foto,
                              mascotaID: listViewMascotasRecord.mascotaID,
                              edad: listViewMascotasRecord.edad,
                              peso: listViewMascotasRecord.peso,
                              nombre: listViewMascotasRecord.nombre,
                              raza: listViewMascotasRecord.raza,
                              especie: listViewMascotasRecord.especie,
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              FlutterFlowIconButton(
                borderRadius: 360.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                fillColor: Color(0xFF05A8EB),
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 32.0,
                ),
                onPressed: () async {
                  context.pushNamed('RegistroComun');
                },
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Text(
                  'Nueva Mascota',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Antipasto_Regular',
                        fontSize: 16.0,
                        useGoogleFonts: false,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import '/backend/backend.dart';
import '/componentes/eliminar_recordatorio/eliminar_recordatorio_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_recordatorio_model.dart';
export 'item_recordatorio_model.dart';

class ItemRecordatorioWidget extends StatefulWidget {
  const ItemRecordatorioWidget({
    Key? key,
    String? tarea,
    this.fechaProgramada,
    this.idMascota,
    this.idRecord,
  })  : this.tarea = tarea ?? '',
        super(key: key);

  final String tarea;
  final DateTime? fechaProgramada;
  final int? idMascota;
  final int? idRecord;

  @override
  _ItemRecordatorioWidgetState createState() => _ItemRecordatorioWidgetState();
}

class _ItemRecordatorioWidgetState extends State<ItemRecordatorioWidget>
    with TickerProviderStateMixin {
  late ItemRecordatorioModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemRecordatorioModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<RecordatoriosRecord>>(
      stream: queryRecordatoriosRecord(
        queryBuilder: (recordatoriosRecord) => recordatoriosRecord.where(
          'idMascota',
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
          decoration: BoxDecoration(),
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterFlowIconButton(
                borderRadius: 360.0,
                borderWidth: 0.0,
                buttonSize: 48.0,
                fillColor: Color(0xFFFF9B50),
                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 24.0,
                ),
                onPressed: () async {
                  setState(() {
                    FFAppState().currentRecord = widget.idRecord!;
                  });
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: EliminarRecordatorioWidget(
                          idRecord: widget.idRecord,
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
              ),
              Material(
                color: Colors.transparent,
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Container(
                  width: 275.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(16.0),
                    shape: BoxShape.rectangle,
                  ),
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.tarea,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Antipasto_Regular',
                              color: Colors.black,
                              fontSize: 20.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      Text(
                        dateTimeFormat(
                          'd/M h:mm a',
                          widget.fechaProgramada,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Antipasto_Regular',
                              color: Colors.black,
                              fontSize: 16.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ].divide(SizedBox(width: 10.0)),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
      },
    );
  }
}

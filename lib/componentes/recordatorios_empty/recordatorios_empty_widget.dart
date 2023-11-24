import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'recordatorios_empty_model.dart';
export 'recordatorios_empty_model.dart';

class RecordatoriosEmptyWidget extends StatefulWidget {
  const RecordatoriosEmptyWidget({Key? key}) : super(key: key);

  @override
  _RecordatoriosEmptyWidgetState createState() =>
      _RecordatoriosEmptyWidgetState();
}

class _RecordatoriosEmptyWidgetState extends State<RecordatoriosEmptyWidget> {
  late RecordatoriosEmptyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecordatoriosEmptyModel());
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
      child: Container(
        width: 500.0,
        decoration: BoxDecoration(),
        alignment: AlignmentDirectional(0.00, 0.00),
        child: Align(
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '¿Algo que planear? ⏰',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Antipasto_bold',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      useGoogleFonts: false,
                    ),
              ),
              Text(
                'Lista vacía',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Antipasto_Regular',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: false,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

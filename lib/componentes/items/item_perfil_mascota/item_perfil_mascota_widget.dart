import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_perfil_mascota_model.dart';
export 'item_perfil_mascota_model.dart';

class ItemPerfilMascotaWidget extends StatefulWidget {
  const ItemPerfilMascotaWidget({
    Key? key,
    this.parameter1,
    this.mascotaID,
    this.edad,
    this.peso,
    this.nombre,
    required this.raza,
    required this.especie,
  }) : super(key: key);

  final String? parameter1;
  final int? mascotaID;
  final int? edad;
  final int? peso;
  final String? nombre;
  final String? raza;
  final String? especie;

  @override
  _ItemPerfilMascotaWidgetState createState() =>
      _ItemPerfilMascotaWidgetState();
}

class _ItemPerfilMascotaWidgetState extends State<ItemPerfilMascotaWidget>
    with TickerProviderStateMixin {
  late ItemPerfilMascotaModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 1200.ms,
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
    _model = createModel(context, () => ItemPerfilMascotaModel());
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
        width: 125.0,
        height: 125.0,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(),
              child: Stack(
                alignment: AlignmentDirectional(1.0, 1.0),
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            FFAppState().currentMascotaID = widget.mascotaID!;
                            FFAppState().currentFoto = widget.parameter1!;
                            FFAppState().currentEdad = widget.edad!;
                            FFAppState().currentPeso = widget.peso!;
                            FFAppState().currentNombre = widget.nombre!;
                            FFAppState().currentRaza = widget.raza!;
                            FFAppState().currentEspecie = widget.especie!;
                          });

                          context.goNamed(
                            'Home',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: Container(
                          width: 80.0,
                          height: 80.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            widget.parameter1!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget.nombre,
                'nombre',
              ),
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Antipasto_Regular',
                    color: Colors.black,
                    fontSize: 16.0,
                    useGoogleFonts: false,
                  ),
            ),
          ].divide(SizedBox(height: 5.0)).around(SizedBox(height: 5.0)),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}

import '/componentes/nav_bar1/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'consejos_model.dart';
export 'consejos_model.dart';

class ConsejosWidget extends StatefulWidget {
  const ConsejosWidget({Key? key}) : super(key: key);

  @override
  _ConsejosWidgetState createState() => _ConsejosWidgetState();
}

class _ConsejosWidgetState extends State<ConsejosWidget> {
  late ConsejosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConsejosModel());

    _model.expandableController1 = ExpandableController(initialExpanded: false);
    _model.expandableController2 = ExpandableController(initialExpanded: false);
    _model.expandableController3 = ExpandableController(initialExpanded: false);
    _model.expandableController4 = ExpandableController(initialExpanded: false);
    _model.expandableController5 = ExpandableController(initialExpanded: false);
    _model.expandableController6 = ExpandableController(initialExpanded: false);
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
                              Icons.pets_sharp,
                              color: Color(0xFFD9D9D9),
                              size: 48.0,
                            ),
                            Text(
                              'Consejos',
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
                          child: ListView(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 4.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Container(
                                    width: 300.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD9D9D9),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Visibility(
                                      visible: responsiveVisibility(
                                        context: context,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Container(
                                          color: Color(0x00000000),
                                          child: ExpandableNotifier(
                                            controller:
                                                _model.expandableController1,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'Dieta',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            'Antipasto_Regular',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                              collapsed: Container(),
                                              expanded: Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15.0, 10.0,
                                                          15.0, 10.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Alimentación equilibrada y adecuada para la etapa de vida: Elige un alimento de alta calidad que esté formulado específicamente para la especie y etapa.\nAsegúrate de que el alimento cumpla con los requisitos nutricionales establecidos por las autoridades de salud animal.\nConsulta con tu veterinario para determinar las necesidades nutricionales específicas de tu mascota, especialmente si tiene condiciones médicas o dietas especiales.\nPorciones controladas y horarios regulares: Controla las porciones de comida de acuerdo con las recomendaciones del envase y las necesidades individuales de tu mascota.\nEstablece horarios regulares de alimentación para crear una rutina que tu mascota pueda seguir.',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Antipasto_Regular',
                                                              color: Color(
                                                                  0x8A000000),
                                                              fontSize: 16.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 4.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Container(
                                    width: 300.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD9D9D9),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Visibility(
                                      visible: responsiveVisibility(
                                        context: context,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Container(
                                          color: Color(0x00000000),
                                          child: ExpandableNotifier(
                                            controller:
                                                _model.expandableController2,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'Vacunación',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            'Antipasto_Regular',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                              collapsed: Container(),
                                              expanded: Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15.0, 10.0,
                                                          15.0, 10.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Consulta a tu veterinario:\nSiempre consulta a un veterinario para establecer un plan de vacunación adecuado para tu mascota. Los veterinarios evaluarán la edad, el historial médico, el estilo de vida y el entorno de tu mascota para determinar las vacunas necesarias.\n\nVacunas básicas:\nAsegúrate de que tu mascota reciba las vacunas básicas recomendadas. Estas suelen incluir las vacunas esenciales para perros, como las contra el moquillo, la parvovirosis, la hepatitis y la rabia. En el caso de los gatos, las vacunas esenciales suelen ser contra el herpesvirus felino, el calicivirus y la panleucopenia, además de la rabia.\n\nPrograma de vacunación:\nSigue el programa de vacunación recomendado por tu veterinario. Las vacunas iniciales se administran en una serie de dosis, generalmente cuando los cachorros o gatitos son jóvenes, y luego se requieren refuerzos periódicos para mantener la inmunidad. Mantén un registro de las fechas de vacunación y asegúrate de cumplir con los refuerzos.',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Antipasto_Regular',
                                                              color: Color(
                                                                  0x8A000000),
                                                              fontSize: 16.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 4.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Container(
                                    width: 300.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD9D9D9),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Visibility(
                                      visible: responsiveVisibility(
                                        context: context,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Container(
                                          color: Color(0x00000000),
                                          child: ExpandableNotifier(
                                            controller:
                                                _model.expandableController3,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'Act. Físicas',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            'Antipasto_Regular',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                              collapsed: Container(),
                                              expanded: Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15.0, 10.0,
                                                          15.0, 10.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Programa paseos que se adapten a la edad, tamaño y nivel de energía de tu perro.\n\nVaría las rutas de los paseos para mantener el interés de tu perro y darle la oportunidad de explorar nuevos lugares y olores.\n\nPara perros, considera juguetes de búsqueda de comida, rompecabezas de comida o juguetes de tira y afloja.\nPara gatos, juguetes que simulan la caza, como plumas o ratones de peluche, pueden mantenerlos activos y comprometidos.\n\nDedica tiempo a jugar con tus mascotas de forma activa. Utiliza juguetes que puedas lanzar o hacer que persigan, como pelotas.',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Antipasto_Regular',
                                                              color: Color(
                                                                  0x8A000000),
                                                              fontSize: 16.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 4.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Container(
                                    width: 300.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD9D9D9),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Visibility(
                                      visible: responsiveVisibility(
                                        context: context,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Container(
                                          color: Color(0x00000000),
                                          child: ExpandableNotifier(
                                            controller:
                                                _model.expandableController4,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'Visitas al Vet.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            'Antipasto_Regular',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                              collapsed: Container(),
                                              expanded: Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15.0, 10.0,
                                                          15.0, 10.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Programa visitas al veterinario regulares:\nAsegúrate de llevar a tus mascotas al veterinario para chequeos de rutina. Los exámenes anuales son importantes para detectar problemas de salud en etapas tempranas.\n\nEstablece una relación con un veterinario de confianza:\nEncuentra un veterinario con el que te sientas cómodo y que tenga experiencia en el cuidado de perros y gatos. Mantener una relación de confianza facilitará la comunicación y el cuidado de tus mascotas.\n\nPrepara a tu mascota: Acostumbra a tu perro o gato a viajar en automóvil desde una edad temprana. Utiliza viajes en automóvil cortos y gratificantes al principio y recompensa a tu mascota con golosinas o caricias positivas. Usa transportines para gatos y arneses o correas seguras para perros.',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Antipasto_Regular',
                                                              color: Color(
                                                                  0x8A000000),
                                                              fontSize: 16.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 4.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Container(
                                    width: 300.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD9D9D9),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Visibility(
                                      visible: responsiveVisibility(
                                        context: context,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Container(
                                          color: Color(0x00000000),
                                          child: ExpandableNotifier(
                                            controller:
                                                _model.expandableController5,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'Baños',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            'Antipasto_Regular',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                              collapsed: Container(),
                                              expanded: Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15.0, 10.0,
                                                          15.0, 10.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Productos adecuados:\nUtiliza un champú diseñado específicamente para perros o gatos. Los productos para humanos pueden ser demasiado fuertes y secar la piel de las mascotas.\n\nPreparación:\nCepilla a tu mascota antes del baño para eliminar nudos y enredos en el pelaje. Esto facilitará el proceso de bañado.\n\nBaño seguro: \nSiempre coloca una alfombrilla antideslizante en el fondo de la bañera o el lavabo para evitar que tu mascota resbale. Mantén una mano en tu mascota en todo momento para que no salte o se escape.\n\nProtege los oídos y los ojos:\nTen cuidado de no dejar que el agua o el champú entren en los ojos u oídos de tu mascota. Puedes usar bolas de algodón en los oídos si es necesario.\n\nEnjuague adecuado:\nAsegúrate de enjuagar bien el champú. Los residuos de jabón pueden causar irritación en la piel y picazón.',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Antipasto_Regular',
                                                              color: Color(
                                                                  0x8A000000),
                                                              fontSize: 16.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 4.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Container(
                                    width: 300.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD9D9D9),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Visibility(
                                      visible: responsiveVisibility(
                                        context: context,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Container(
                                          color: Color(0x00000000),
                                          child: ExpandableNotifier(
                                            controller:
                                                _model.expandableController6,
                                            child: ExpandablePanel(
                                              header: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'Cepillados',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            'Antipasto_Regular',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                              collapsed: Container(),
                                              expanded: Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15.0, 10.0,
                                                          15.0, 10.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Comienza suavemente:\nComienza con trazos suaves y lentos para evitar causar molestias o dolor a tu mascota. Presta atención a las áreas propensas a enredos, como detrás de las orejas, debajo de las patas y en el abdomen.\n\nCepilla en la dirección del crecimiento del pelo:\nCepilla en la dirección en la que crece el pelo para evitar tirones y desgarros.\n\nTen cuidado con los nudos y enredos:\nSi encuentras un nudo, trabájalo suavemente con los dedos o utiliza un peine o cepillo específico para desenredar. No tires de los nudos, ya que esto puede causar molestias o incluso heridas en la piel de tu mascota.\n\nInspecciona la piel:\nMientras cepillas, examina la piel de tu mascota en busca de irritaciones, heridas, bultos o pulgas. Si encuentras algo inusual, consulta a un veterinario.',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Antipasto_Regular',
                                                              color: Color(
                                                                  0x8A000000),
                                                              fontSize: 16.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              theme: ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: false,
                                                tapBodyToCollapse: false,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 20.0)),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
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
import 'vacunas_widget.dart' show VacunasWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VacunasModel extends FlutterFlowModel<VacunasWidget> {

  final unfocusNode = FocusNode();
  late NavBar1Model navBar1Model;

  void initState(BuildContext context) {
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  void dispose() {
    unfocusNode.dispose();
    navBar1Model.dispose();
  }
}
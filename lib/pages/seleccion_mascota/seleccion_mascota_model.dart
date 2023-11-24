import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/items/item_perfil_mascota/item_perfil_mascota_widget.dart';
import '/componentes/mascotas_empty/mascotas_empty_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'seleccion_mascota_widget.dart' show SeleccionMascotaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SeleccionMascotaModel extends FlutterFlowModel<SeleccionMascotaWidget> {

  final unfocusNode = FocusNode();

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }
}
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_h_c_widget.dart' show EditHCWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditHCModel extends FlutterFlowModel<EditHCWidget> {

  final formKey = GlobalKey<FormState>();

  FocusNode? motivoFocusNode;
  TextEditingController? motivoController;
  String? Function(BuildContext, String?)? motivoControllerValidator;
  String? _motivoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el motivo de visita.';
    }

    return null;
  }

  DateTime? datePicked;

  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  ClinicaRecord? singleDelteHCQuery;
  ClinicaRecord? singleUpdateHCQuery;

  void initState(BuildContext context) {
    motivoControllerValidator = _motivoControllerValidator;
  }

  void dispose() {
    motivoFocusNode?.dispose();
    motivoController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
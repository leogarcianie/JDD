import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_vacuna_widget.dart' show EditVacunaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditVacunaModel extends FlutterFlowModel<EditVacunaWidget> {

  final formKey = GlobalKey<FormState>();

  FocusNode? nomVacunaFocusNode;
  TextEditingController? nomVacunaController;
  String? Function(BuildContext, String?)? nomVacunaControllerValidator;
  String? _nomVacunaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el nombre de la vacuna.';
    }

    if (val.length > 15) {
      return 'Máximo 15 caracteres.';
    }

    return null;
  }

  DateTime? datePicked;

  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  VacunasRecord? singleDelteVacunaQuery;
  VacunasRecord? singleUpdateVacunaQuery;

  void initState(BuildContext context) {
    nomVacunaControllerValidator = _nomVacunaControllerValidator;
  }

  void dispose() {
    nomVacunaFocusNode?.dispose();
    nomVacunaController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
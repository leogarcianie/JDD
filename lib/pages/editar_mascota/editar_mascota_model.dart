import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/componentes/eliminar_perfil/eliminar_perfil_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'editar_mascota_widget.dart' show EditarMascotaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarMascotaModel extends FlutterFlowModel<EditarMascotaWidget> {

  FFUploadedFile? imagen;

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  FocusNode? textFieldNombreFocusNode;
  TextEditingController? textFieldNombreController;
  String? Function(BuildContext, String?)? textFieldNombreControllerValidator;
  String? _textFieldNombreControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el nombre';
    }

    return null;
  }

  FocusNode? textFieldEdadFocusNode;
  TextEditingController? textFieldEdadController;
  String? Function(BuildContext, String?)? textFieldEdadControllerValidator;

  FocusNode? textFieldPesoFocusNode;
  TextEditingController? textFieldPesoController;
  String? Function(BuildContext, String?)? textFieldPesoControllerValidator;

  FocusNode? textFieldRazaFocusNode;
  TextEditingController? textFieldRazaController;
  String? Function(BuildContext, String?)? textFieldRazaControllerValidator;

  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  MascotasRecord? singleUpdateMascota;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  void initState(BuildContext context) {
    textFieldNombreControllerValidator = _textFieldNombreControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldNombreFocusNode?.dispose();
    textFieldNombreController?.dispose();

    textFieldEdadFocusNode?.dispose();
    textFieldEdadController?.dispose();

    textFieldPesoFocusNode?.dispose();
    textFieldPesoController?.dispose();

    textFieldRazaFocusNode?.dispose();
    textFieldRazaController?.dispose();
  }
}
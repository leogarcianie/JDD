import '/componentes/edit_h_c/edit_h_c_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'item_historia_widget.dart' show ItemHistoriaWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemHistoriaModel extends FlutterFlowModel<ItemHistoriaWidget> {

  late ExpandableController expandableController;

  void initState(BuildContext context) {}

  void dispose() {
    expandableController.dispose();
  }
}
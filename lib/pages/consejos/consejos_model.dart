import '/componentes/nav_bar1/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'consejos_widget.dart' show ConsejosWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConsejosModel extends FlutterFlowModel<ConsejosWidget> {

  final unfocusNode = FocusNode();

  late ExpandableController expandableController1;

  late ExpandableController expandableController2;

  late ExpandableController expandableController3;

  late ExpandableController expandableController4;

  late ExpandableController expandableController5;

  late ExpandableController expandableController6;

  late NavBar1Model navBar1Model;

  void initState(BuildContext context) {
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  void dispose() {
    unfocusNode.dispose();
    expandableController1.dispose();
    expandableController2.dispose();
    expandableController3.dispose();
    expandableController4.dispose();
    expandableController5.dispose();
    expandableController6.dispose();
    navBar1Model.dispose();
  }
}
import '/flutter_flow/flutter_flow_util.dart';
import 'categoria_widget.dart' show CategoriaWidget;
import 'package:flutter/material.dart';

class CategoriaModel extends FlutterFlowModel<CategoriaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

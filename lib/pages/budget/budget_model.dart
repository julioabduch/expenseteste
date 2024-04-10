import '/flutter_flow/flutter_flow_util.dart';
import 'budget_widget.dart' show BudgetWidget;
import 'package:flutter/material.dart';

class BudgetModel extends FlutterFlowModel<BudgetWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

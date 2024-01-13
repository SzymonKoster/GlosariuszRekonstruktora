import '/flutter_flow/flutter_flow_util.dart';
import 'single_event_page_widget.dart' show SingleEventPageWidget;
import 'package:flutter/material.dart';

class SingleEventPageModel extends FlutterFlowModel<SingleEventPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

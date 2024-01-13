import '/flutter_flow/flutter_flow_util.dart';
import 'new_event_page_widget.dart' show NewEventPageWidget;
import 'package:flutter/material.dart';

class NewEventPageModel extends FlutterFlowModel<NewEventPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for EventNameTextField widget.
  FocusNode? eventNameTextFieldFocusNode;
  TextEditingController? eventNameTextFieldController;
  String? Function(BuildContext, String?)?
      eventNameTextFieldControllerValidator;
  // State field(s) for BeginYearTextField widget.
  FocusNode? beginYearTextFieldFocusNode;
  TextEditingController? beginYearTextFieldController;
  String? Function(BuildContext, String?)?
      beginYearTextFieldControllerValidator;
  // State field(s) for EndYearTextField widget.
  FocusNode? endYearTextFieldFocusNode;
  TextEditingController? endYearTextFieldController;
  String? Function(BuildContext, String?)? endYearTextFieldControllerValidator;
  // State field(s) for LocalisationTextField widget.
  FocusNode? localisationTextFieldFocusNode;
  TextEditingController? localisationTextFieldController;
  String? Function(BuildContext, String?)?
      localisationTextFieldControllerValidator;
  // State field(s) for EventDescriptionTextField widget.
  FocusNode? eventDescriptionTextFieldFocusNode;
  TextEditingController? eventDescriptionTextFieldController;
  String? Function(BuildContext, String?)?
      eventDescriptionTextFieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    eventNameTextFieldFocusNode?.dispose();
    eventNameTextFieldController?.dispose();

    beginYearTextFieldFocusNode?.dispose();
    beginYearTextFieldController?.dispose();

    endYearTextFieldFocusNode?.dispose();
    endYearTextFieldController?.dispose();

    localisationTextFieldFocusNode?.dispose();
    localisationTextFieldController?.dispose();

    eventDescriptionTextFieldFocusNode?.dispose();
    eventDescriptionTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

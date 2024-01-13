import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'new_character_page_widget.dart' show NewCharacterPageWidget;
import 'package:flutter/material.dart';

class NewCharacterPageModel extends FlutterFlowModel<NewCharacterPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldName widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameController;
  String? Function(BuildContext, String?)? textFieldNameControllerValidator;
  // State field(s) for RadioButtonGender widget.
  FormFieldController<String>? radioButtonGenderValueController;
  // State field(s) for TextFieldAge widget.
  FocusNode? textFieldAgeFocusNode;
  TextEditingController? textFieldAgeController;
  String? Function(BuildContext, String?)? textFieldAgeControllerValidator;
  // State field(s) for TextFieldOrigin widget.
  FocusNode? textFieldOriginFocusNode;
  TextEditingController? textFieldOriginController;
  String? Function(BuildContext, String?)? textFieldOriginControllerValidator;
  // State field(s) for TextFieldProfession widget.
  FocusNode? textFieldProfessionFocusNode;
  TextEditingController? textFieldProfessionController;
  String? Function(BuildContext, String?)?
      textFieldProfessionControllerValidator;
  // State field(s) for DropDownSocial widget.
  String? dropDownSocialValue;
  FormFieldController<String>? dropDownSocialValueController;
  // State field(s) for RatingBarRichness widget.
  double? ratingBarRichnessValue;
  // State field(s) for DropDownEvent widget.
  String? dropDownEventValue1;
  FormFieldController<String>? dropDownEventValueController1;
  // State field(s) for DropDownEvent widget.
  List<String>? dropDownEventValue2;
  FormFieldController<List<String>>? dropDownEventValueController2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldNameFocusNode?.dispose();
    textFieldNameController?.dispose();

    textFieldAgeFocusNode?.dispose();
    textFieldAgeController?.dispose();

    textFieldOriginFocusNode?.dispose();
    textFieldOriginController?.dispose();

    textFieldProfessionFocusNode?.dispose();
    textFieldProfessionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonGenderValue => radioButtonGenderValueController?.value;
}

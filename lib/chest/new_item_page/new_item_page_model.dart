import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'new_item_page_widget.dart' show NewItemPageWidget;
import 'package:flutter/material.dart';

class NewItemPageModel extends FlutterFlowModel<NewItemPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for NameTextField widget.
  FocusNode? nameTextFieldFocusNode;
  TextEditingController? nameTextFieldController;
  String? Function(BuildContext, String?)? nameTextFieldControllerValidator;
  // State field(s) for CategoryList widget.
  String? categoryListValue;
  FormFieldController<String>? categoryListValueController;
  // State field(s) for SubCategoryList widget.
  String? subCategoryListValue;
  FormFieldController<String>? subCategoryListValueController;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for ItemDescription widget.
  FocusNode? itemDescriptionFocusNode;
  TextEditingController? itemDescriptionController;
  String? Function(BuildContext, String?)? itemDescriptionControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameTextFieldFocusNode?.dispose();
    nameTextFieldController?.dispose();

    itemDescriptionFocusNode?.dispose();
    itemDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

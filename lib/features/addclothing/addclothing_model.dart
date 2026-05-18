import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'addclothing_widget.dart' show AddclothingWidget;
import 'package:flutter/material.dart';

class AddclothingModel extends FlutterFlowModel<AddclothingWidget> {
  ///  Local state fields for this page.

  String? tempImage;

  String? tempName;

  String? tempCategory;

  ClothingItemStruct? clothingitem;
  void updateClothingitemStruct(Function(ClothingItemStruct) updateFn) {
    updateFn(clothingitem ??= ClothingItemStruct());
  }

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadedClothes = false;
  FFUploadedFile uploadedLocalFile_uploadedClothes =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

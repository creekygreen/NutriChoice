import '../widget/page_sign_up_widget.dart' show PageSignUpWidget;
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';

class PageSignUpModel extends FlutterFlowModel<PageSignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress-SignUp widget.
  FocusNode? emailAddressSignUpFocusNode;
  TextEditingController? emailAddressSignUpController;
  String? Function(BuildContext, String?)?
      emailAddressSignUpControllerValidator;
  // State field(s) for password-SignUp widget.
  FocusNode? passwordSignUpFocusNode;
  TextEditingController? passwordSignUpController;
  late bool passwordSignUpVisibility;
  String? Function(BuildContext, String?)? passwordSignUpControllerValidator;
  // State field(s) for passwordConfirm-SignUp widget.
  FocusNode? passwordConfirmSignUpFocusNode;
  TextEditingController? passwordConfirmSignUpController;
  late bool passwordConfirmSignUpVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmSignUpControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordSignUpVisibility = false;
    passwordConfirmSignUpVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressSignUpFocusNode?.dispose();
    emailAddressSignUpController?.dispose();

    passwordSignUpFocusNode?.dispose();
    passwordSignUpController?.dispose();

    passwordConfirmSignUpFocusNode?.dispose();
    passwordConfirmSignUpController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

import '../widget/page_sign_in_widget.dart' show PageSignInWidget;
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';

class PageSignInModel extends FlutterFlowModel<PageSignInWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress-SignIn widget.
  FocusNode? emailAddressSignInFocusNode;
  TextEditingController? emailAddressSignInController;
  String? Function(BuildContext, String?)?
      emailAddressSignInControllerValidator;
  // State field(s) for password-SignIn widget.
  FocusNode? passwordSignInFocusNode;
  TextEditingController? passwordSignInController;
  late bool passwordSignInVisibility;
  String? Function(BuildContext, String?)? passwordSignInControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordSignInVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressSignInFocusNode?.dispose();
    emailAddressSignInController?.dispose();

    passwordSignInFocusNode?.dispose();
    passwordSignInController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

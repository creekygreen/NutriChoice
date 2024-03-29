import '../widget/page_forgot_password_widget.dart' show PageForgotPasswordWidget;
import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';

class PageForgotPasswordModel
    extends FlutterFlowModel<PageForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress-ForgotPassword widget.
  FocusNode? emailAddressForgotPasswordFocusNode;
  TextEditingController? emailAddressForgotPasswordController;
  String? Function(BuildContext, String?)?
      emailAddressForgotPasswordControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressForgotPasswordFocusNode?.dispose();
    emailAddressForgotPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

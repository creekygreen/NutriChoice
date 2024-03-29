import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';

import '../model/page_forgot_password_model.dart';
export '../model/page_forgot_password_model.dart';

class PageForgotPasswordWidget extends StatefulWidget {
  const PageForgotPasswordWidget({super.key});

  @override
  State<PageForgotPasswordWidget> createState() =>
      _PageForgotPasswordWidgetState();
}

class _PageForgotPasswordWidgetState extends State<PageForgotPasswordWidget> {
  late PageForgotPasswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageForgotPasswordModel());

    _model.emailAddressForgotPasswordController ??= TextEditingController();
    _model.emailAddressForgotPasswordFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () async {
            Navigator.of(context).pop();
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, -1),
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(
                maxWidth: 570,
              ),
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Forgot Password',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Poppins',
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
                      child: Text(
                        'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 16,
                                ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 16),
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller:
                              _model.emailAddressForgotPasswordController,
                          focusNode: _model.emailAddressForgotPasswordFocusNode,
                          autofillHints: [AutofillHints.email],
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Recovery Email Address',
                            labelStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            hintText: 'Enter your email address',
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                          ),
                          style: FlutterFlowTheme.of(context).bodyLarge,
                          maxLines: null,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model
                              .emailAddressForgotPasswordControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button-SendPasswordResetLink pressed ...');
                        },
                        text: 'Send Link',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 50,
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          iconPadding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: Colors.green,
                          textStyle: FlutterFlowTheme.of(context).titleSmall,
                          elevation: 3,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for insert-email widget.
  FocusNode? insertEmailFocusNode;
  TextEditingController? insertEmailController;
  String? Function(BuildContext, String?)? insertEmailControllerValidator;
  // State field(s) for insert-password widget.
  FocusNode? insertPasswordFocusNode;
  TextEditingController? insertPasswordController;
  late bool insertPasswordVisibility;
  String? Function(BuildContext, String?)? insertPasswordControllerValidator;

  @override
  void initState(BuildContext context) {
    insertPasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    insertEmailFocusNode?.dispose();
    insertEmailController?.dispose();

    insertPasswordFocusNode?.dispose();
    insertPasswordController?.dispose();
  }
}

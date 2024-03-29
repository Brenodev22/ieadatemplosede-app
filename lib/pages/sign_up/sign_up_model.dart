import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for insert-NameCadastro widget.
  FocusNode? insertNameCadastroFocusNode;
  TextEditingController? insertNameCadastroController;
  String? Function(BuildContext, String?)?
      insertNameCadastroControllerValidator;
  // State field(s) for insert-PhoneCadastro widget.
  FocusNode? insertPhoneCadastroFocusNode;
  TextEditingController? insertPhoneCadastroController;
  final insertPhoneCadastroMask =
      MaskTextInputFormatter(mask: '+# (###) ###-##-##');
  String? Function(BuildContext, String?)?
      insertPhoneCadastroControllerValidator;
  // State field(s) for insert-emailCadastro widget.
  FocusNode? insertEmailCadastroFocusNode;
  TextEditingController? insertEmailCadastroController;
  String? Function(BuildContext, String?)?
      insertEmailCadastroControllerValidator;
  // State field(s) for insert-passwordCadastro widget.
  FocusNode? insertPasswordCadastroFocusNode;
  TextEditingController? insertPasswordCadastroController;
  late bool insertPasswordCadastroVisibility;
  String? Function(BuildContext, String?)?
      insertPasswordCadastroControllerValidator;
  // State field(s) for insert-ConfirmPasswordCadastro widget.
  FocusNode? insertConfirmPasswordCadastroFocusNode;
  TextEditingController? insertConfirmPasswordCadastroController;
  late bool insertConfirmPasswordCadastroVisibility;
  String? Function(BuildContext, String?)?
      insertConfirmPasswordCadastroControllerValidator;

  @override
  void initState(BuildContext context) {
    insertPasswordCadastroVisibility = false;
    insertConfirmPasswordCadastroVisibility = false;
  }

  @override
  void dispose() {
    insertNameCadastroFocusNode?.dispose();
    insertNameCadastroController?.dispose();

    insertPhoneCadastroFocusNode?.dispose();
    insertPhoneCadastroController?.dispose();

    insertEmailCadastroFocusNode?.dispose();
    insertEmailCadastroController?.dispose();

    insertPasswordCadastroFocusNode?.dispose();
    insertPasswordCadastroController?.dispose();

    insertConfirmPasswordCadastroFocusNode?.dispose();
    insertConfirmPasswordCadastroController?.dispose();
  }
}

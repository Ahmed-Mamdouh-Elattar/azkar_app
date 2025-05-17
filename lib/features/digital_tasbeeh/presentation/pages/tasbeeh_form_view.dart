import 'package:azkar_app/core/localization/generated/l10n.dart';
import 'package:azkar_app/features/digital_tasbeeh/presentation/widgets/tasbeeh_form_view_body.dart';
import 'package:flutter/material.dart';

class TasbeehFormView extends StatelessWidget {
  const TasbeehFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).digitalTasbeeh)),
      body: const TasbeehFormViewBody(),
    );
  }
}

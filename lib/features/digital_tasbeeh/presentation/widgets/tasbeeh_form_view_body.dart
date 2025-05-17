import 'package:azkar_app/core/helper/constants.dart';

import 'package:azkar_app/core/localization/generated/l10n.dart';
import 'package:azkar_app/core/utils/app_navigation.dart';
import 'package:azkar_app/features/digital_tasbeeh/data/tasbeeh_model.dart';
import 'package:azkar_app/features/digital_tasbeeh/presentation/pages/tasbeeh_counter_view.dart';
import 'package:azkar_app/features/digital_tasbeeh/presentation/widgets/custom_button.dart';
import 'package:azkar_app/features/digital_tasbeeh/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class TasbeehFormViewBody extends StatefulWidget {
  const TasbeehFormViewBody({super.key});

  @override
  State<TasbeehFormViewBody> createState() => _TasbeehFormViewBodyState();
}

class _TasbeehFormViewBodyState extends State<TasbeehFormViewBody> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController fieldController1 = TextEditingController();
  final TextEditingController fieldController2 = TextEditingController();
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  void dispose() {
    fieldController1.dispose();
    fieldController2.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kViewPadding),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFormTextField(
                  controller: fieldController1,
                  focusNode: focusNode1,
                  hintText: S.of(context).enterZekr,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).enterZekr;
                    }
                    return null;
                  },
                  onFieldSubmitted: (_) {
                    focusNode1.unfocus();
                    focusNode2.requestFocus();
                  },
                ),
                const SizedBox(height: 16),
                CustomFormTextField(
                  controller: fieldController2,
                  focusNode: focusNode2,
                  keyboardType: TextInputType.number,
                  hintText: S.of(context).enterRepeat,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).enterRepeat;
                    }
                    return null;
                  },
                  onFieldSubmitted: (_) {
                    focusNode2.unfocus();
                    _saveData();
                  },
                ),
                const SizedBox(height: 16),
                CustomButton(text: S.of(context).start, onPressed: _saveData),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _saveData() {
    if (formKey.currentState!.validate()) {
      AppNavigation.pushWithFadingAnimation(
        context: context,
        view: TasbeehCounterView(
          tasbeehModel: TasbeehModel(
            zekr: fieldController1.text,
            zekrRepeat: int.parse(fieldController2.text),
          ),
        ),
      );
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}

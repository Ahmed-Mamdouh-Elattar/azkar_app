import 'package:azkar_app/features/share/presentation/managers/share_zeker_cubit/share_zeker_cubit.dart';
import 'package:azkar_app/features/share/presentation/widgets/share_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShareZekerCubit(),
      child: const ShareActionButton(),
    );
  }
}

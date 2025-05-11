import 'package:azkar_app/features/home/presentation/managers/azkar_cubit/azkar_cubit.dart';
import 'package:azkar_app/features/home/presentation/widgets/azkar_view_body_content.dart';
import 'package:azkar_app/features/home/presentation/widgets/celebration_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AzkarViewBodyContentBuilder extends StatelessWidget {
  const AzkarViewBodyContentBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AzkarCubit, AzkarState>(
      buildWhen:
          (previous, current) =>
              !(previous is AzkarSuccess && current is AzkarSuccess),
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder:
              (child, animation) =>
                  FadeTransition(opacity: animation, child: child),
          child: buildBodyContent(state),
        );
      },
    );
  }

  Widget buildBodyContent(AzkarState state) {
    if (state is AzkarLoading || state is AzkarInitial) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is AzkarSuccess) {
      return const AzkarViewBodyContent(key: ValueKey("azkarViewBodyContent"));
    } else if (state is AzkarFinished) {
      return const CelebrationWidget(key: ValueKey("celebrationWidget"));
    } else if (state is AzkarError) {
      return Center(
        child: Text(state.message, key: const ValueKey("azkarError")),
      );
    } else {
      return const Center(child: Text("Error", key: ValueKey("azkarError")));
    }
  }
}

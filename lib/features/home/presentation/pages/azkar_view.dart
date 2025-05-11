import 'dart:developer';

import 'package:azkar_app/core/services/service_locator.dart';

import 'package:azkar_app/features/home/presentation/managers/azkar_cubit/azkar_cubit.dart';
import 'package:azkar_app/features/home/presentation/managers/zeker_counter/zeker_counter_cubit.dart';
import 'package:azkar_app/features/home/presentation/widgets/azkar_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({required this.azkarCategory, super.key});
  final String azkarCategory;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  getIt.get<AzkarCubit>()
                    ..getAzkarCategoryList(category: azkarCategory),
        ),
        BlocProvider(
          create: (context) {
            int zekerCounter = BlocProvider.of<AzkarCubit>(context).zekerRepeat;
            log("zekerCounter: $zekerCounter");
            return ZekerCounterCubit(zekerCounterTotal: zekerCounter);
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(title: Text(azkarCategory)),
        body: const SafeArea(child: AzkarViewBody()),
      ),
    );
  }
}

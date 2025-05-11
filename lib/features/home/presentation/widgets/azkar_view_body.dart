import 'package:azkar_app/core/helper/constants.dart';
import 'package:azkar_app/features/home/presentation/widgets/azkar_view_body_content_builder.dart';

import 'package:azkar_app/features/home/presentation/widgets/custom_linear_progress_indicator.dart';

import 'package:flutter/material.dart';

class AzkarViewBody extends StatelessWidget {
  const AzkarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kViewPadding),
      child: LayoutBuilder(
        builder: (context, snapshot) {
          return Column(
            children: [
              SizedBox(
                height: snapshot.maxHeight * 0.08,
                child: const CustomLinearProgressIndicator(),
              ),

              SizedBox(
                height: snapshot.maxHeight * 0.92,
                child: const AzkarViewBodyContentBuilder(),
              ),
            ],
          );
        },
      ),
    );
  }
}

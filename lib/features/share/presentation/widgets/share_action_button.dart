import 'package:azkar_app/core/config/app_color.dart';
import 'package:azkar_app/core/helper/show_snack_bar.dart';
import 'package:azkar_app/core/utils/app_navigation.dart';
import 'package:azkar_app/core/utils/provide_data/provide_data_cubit.dart';
import 'package:azkar_app/features/share/presentation/managers/share_zeker_cubit/share_zeker_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShareActionButton extends StatelessWidget {
  const ShareActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ShareZekerCubit, ShareZekerState>(
      listener: (context, state) {
        switch (state) {
          case Success(:final message):
            showSnackBar(
              context: context,
              text: message,
              backgroundColor: AppColor.snackBarSuccessColor,
            );
            break;
          case Failure(:final message):
            showSnackBar(
              context: context,
              text: message,
              backgroundColor: AppColor.snackBarErrorColor,
            );
            break;
          default:
            break;
        }
      },
      child: IconButton(
        onPressed: () {
          showShareOptions(cubitContext: context);
        },
        icon: const Icon(Icons.share_outlined, size: 34),
      ),
    );
  }

  void showShareOptions({required BuildContext cubitContext}) {
    showDialog(
      context: cubitContext,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: const Text('اختر نوع المشاركة'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.text_fields),
                title: const Text('مشاركة كنص'),
                onTap: () async {
                  AppNavigation.pop(context);
                  await cubitContext.read<ShareZekerCubit>().shareZekerAsText(
                    cubitContext.read<ProvideDataCubit>().zekerItemModel,
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.image),
                title: const Text('مشاركة كصورة'),
                onTap: () {
                  AppNavigation.pop(context);
                  cubitContext.read<ShareZekerCubit>().shareZekerAsImage(
                    widgtScreenShot:
                        cubitContext.read<ProvideDataCubit>().widgtScreenShot,
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

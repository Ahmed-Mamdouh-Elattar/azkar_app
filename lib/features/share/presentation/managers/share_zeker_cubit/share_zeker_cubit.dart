import 'dart:io';

import 'dart:typed_data';
import 'dart:ui';

import 'package:azkar_app/core/localization/generated/l10n.dart';
import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

part 'share_zeker_state.dart';
part 'share_zeker_cubit.freezed.dart';

class ShareZekerCubit extends Cubit<ShareZekerState> {
  ShareZekerCubit() : super(const ShareZekerState.initial());

  Future<void> shareZekerAsText(ZekerItem zeker) async {
    try {
      await SharePlus.instance.share(
        ShareParams(
          text: '''${zeker.zekr}
  
  المرات ${zeker.repeat}''',
        ),
      );
      emit(ShareZekerState.success(message: S.current.onShareSuccess));
    } catch (e) {
      emit(ShareZekerState.failure(message: S.current.onShareError));
    }
  }

  Future<void> shareZekerAsImage({required GlobalKey widgtScreenShot}) async {
    try {
      RenderRepaintBoundary boundary =
          widgtScreenShot.currentContext!.findRenderObject()
              as RenderRepaintBoundary;

      var image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData = await image.toByteData(format: ImageByteFormat.png);
      Uint8List pngBytes = byteData!.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final file = await File('${tempDir.path}/shared.png').create();
      await file.writeAsBytes(pngBytes);

      await SharePlus.instance.share(ShareParams(files: [XFile(file.path)]));

      await file.delete();
      emit(ShareZekerState.success(message: S.current.onShareSuccess));
    } catch (e) {
      emit(ShareZekerState.failure(message: S.current.onShareError));
    }
  }
}

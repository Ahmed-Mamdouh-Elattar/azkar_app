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
      RenderRepaintBoundary screenShotRenender =
          widgtScreenShot.currentContext!.findRenderObject()
              as RenderRepaintBoundary;

      Uint8List pngBytes = await _extractImageAsUint8List(screenShotRenender);

      File imageFile = await _saveImageFileInTemporaryDirectory(pngBytes);

      await SharePlus.instance.share(
        ShareParams(files: [XFile(imageFile.path)]),
      );

      await imageFile.delete();
      emit(ShareZekerState.success(message: S.current.onShareSuccess));
    } catch (e) {
      emit(ShareZekerState.failure(message: S.current.onShareError));
    }
  }

  /// Saves the given [pngBytes] as a file in the temporary directory.
  ///
  /// The file is saved as 'shared.png' in the temporary directory.
  ///
  /// The [pngBytes] is written to the file using the [writeAsBytes] method.
  ///
  /// The [File] object is returned.
  Future<File> _saveImageFileInTemporaryDirectory(Uint8List pngBytes) async {
    final tempDir = await getTemporaryDirectory();

    final file = await File('${tempDir.path}/shared.png').create();

    await file.writeAsBytes(pngBytes);

    return file;
  }

  /// Extracts the image from the [screenShotRenender] as a [Uint8List].
  ///
  /// This method is used to share the image as a file.
  ///
  /// The [pixelRatio] is set to 3.0 to make the image look good on different
  /// devices and resolutions.
  ///
  /// The image is converted to a [ByteData] object and then to a [Uint8List].
  ///
  /// The [Uint8List] is then returned and can be used to be saved as a file.
  Future<Uint8List> _extractImageAsUint8List(
    RenderRepaintBoundary screenShotRenender,
  ) async {
    var image = await screenShotRenender.toImage(pixelRatio: 3.0);
    ByteData? byteData = await image.toByteData(format: ImageByteFormat.png);
    Uint8List pngBytes = byteData!.buffer.asUint8List();
    return pngBytes;
  }
}

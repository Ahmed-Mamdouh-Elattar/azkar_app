import 'package:azkar_app/core/assets/assets.dart';

import 'package:azkar_app/features/digital_tasbeeh/data/tasbeeh_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:vibration/vibration.dart';

part 'tasbeeh_state.dart';
part 'tasbeeh_cubit.freezed.dart';

class TasbeehCubit extends Cubit<TasbeehState> {
  TasbeehCubit({required this.tasbeehModel})
    : super(const TasbeehState.initial(counter: 0));
  final TasbeehModel tasbeehModel;
  late final AudioPlayer _audio;
  bool _isVibrationMode = false;
  bool _isDeviceHaveVibration = false;

  int _counter = 0;
  Future<void> init() async {
    _audio = AudioPlayer();
    await _audio.setAsset(Assets.mediaSoundsClickEffect);
    await _isDeviceHaveVibrator();
  }

  void increment() {
    _counter++;
    if (_counter < tasbeehModel.zekrRepeat) {
      _playVibrationOrSoundMode();
      emit(
        TasbeehState.increment(
          counter: _counter,
          isVibrationMode: _isVibrationMode,
        ),
      );
    } else {
      if (_isDeviceHaveVibration) {
        Vibration.vibrate(duration: 2000);
      }
      emit(const TasbeehState.finished());
    }
  }

  void reset() {
    _counter = 0;
    emit(
      TasbeehState.reset(counter: _counter, isVibrationMode: _isVibrationMode),
    );
  }

  void setVibrationMode() {
    _isVibrationMode = !_isVibrationMode;
    emit(
      TasbeehState.increment(
        counter: _counter,
        isVibrationMode: _isVibrationMode,
      ),
    );
  }

  void _playVibrationOrSoundMode() {
    if (_isVibrationMode) {
      if (_isDeviceHaveVibration) {
        Vibration.vibrate(duration: 70);
      }
    } else {
      _audio.seek(Duration.zero);
      _audio.play();
    }
  }

  Future<void> _isDeviceHaveVibrator() async {
    _isDeviceHaveVibration = await Vibration.hasVibrator();
  }

  @override
  Future<void> close() async {
    await _audio.dispose();
    return super.close();
  }
}

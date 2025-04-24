import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log("change: ${bloc.runtimeType} $change");
  }

  @override
  void onClose(BlocBase bloc) {
    log("close: ${bloc.runtimeType}");
  }

  @override
  void onCreate(BlocBase bloc) {
    log("create: ${bloc.runtimeType}");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {}

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    log("transition: ${bloc.runtimeType} $transition");
  }
}

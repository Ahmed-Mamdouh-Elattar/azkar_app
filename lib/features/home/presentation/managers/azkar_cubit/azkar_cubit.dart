import 'package:azkar_app/core/models/azkar_model/azkar_model.dart';
import 'package:azkar_app/core/models/azkar_model/zeker_item.dart';
import 'package:azkar_app/features/home/data/repos/local_storage_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'azkar_state.dart';

class AzkarCubit extends Cubit<AzkarState> {
  AzkarCubit({required LocalStorageRepo localStorageRepo})
    : _localStorageRepo = localStorageRepo,
      super(AzkarInitial());

  final LocalStorageRepo _localStorageRepo;
  List<ZekerItem> azkarList = [];
  late int zekerRepeat;
  int zekerIndex = 0;

  Future<void> saveAzkarList() async {
    await _localStorageRepo.saveAzkarList();
  }

  void getAzkarCategoryList({required String category}) {
    emit(AzkarLoading());
    try {
      AzkarModel azkarCategory = _localStorageRepo.getAzkarCategory(
        category: category,
      );
      azkarList = azkarCategory.zekerItems;
      zekerRepeat = azkarCategory.zekerItems[0].repeat;
      emit(
        AzkarSuccess(
          zeker: azkarCategory.zekerItems[0],
          index: zekerIndex,
          azkarListLength: azkarCategory.totalItems,
        ),
      );
    } catch (e) {
      emit(AzkarError(message: e.toString()));
    }
  }

  Future<void> loadNextZeker() async {
    await Future.delayed(const Duration(milliseconds: 200));
    zekerIndex = zekerIndex + 1;
    emit(AzkarLoading());
    try {
      if (zekerIndex <= azkarList.length - 1) {
        zekerRepeat = azkarList[zekerIndex].repeat;
        emit(
          AzkarSuccess(
            zeker: azkarList[zekerIndex],
            index: zekerIndex,
            azkarListLength: azkarList.length,
          ),
        );
      } else {
        emit(AzkarFinished());
      }
    } catch (e) {
      emit(AzkarError(message: e.toString()));
    }
  }
}

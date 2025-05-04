import 'package:azkar_app/features/home/data/repos/local_storage_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'azkar_state.dart';

class AzkarCubit extends Cubit<AzkarState> {
  AzkarCubit({required LocalStorageRepo localStorageRepo})
    : _localStorageRepo = localStorageRepo,
      super(AzkarInitial());

  final LocalStorageRepo _localStorageRepo;

  Future<void> saveAzkarList() async {
    await _localStorageRepo.saveAzkarList();
  }
}

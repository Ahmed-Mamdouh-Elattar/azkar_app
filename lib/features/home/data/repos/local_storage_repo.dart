import 'package:azkar_app/core/models/azkar_model/azkar_model.dart';
import 'package:azkar_app/features/home/data/sources/local_storage.dart';

class LocalStorageRepo {
  final LocalStorage localStorage;

  LocalStorageRepo({required this.localStorage});

  Future<void> saveAzkarList() async {
    await localStorage.saveAzkarList();
  }

  AzkarModel getAzkarCategory({required String category}) {
    return localStorage.getAzkarCategory(category: category);
  }
}

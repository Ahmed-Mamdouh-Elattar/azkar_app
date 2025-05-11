import 'package:azkar_app/core/helper/constants.dart';
import 'package:azkar_app/core/models/azkar_model/azkar_model.dart';
import 'package:azkar_app/core/models/azkar_model/objectbox.g.dart';
import 'package:azkar_app/core/services/objectbox_service.dart';

import 'package:azkar_app/core/services/shared_preferences_service.dart';
import 'package:azkar_app/features/home/data/sources/json_data.dart';

abstract class LocalStorage {
  Future<void> saveAzkarList();
  AzkarModel getAzkarCategory({required String category});
}

class LocalStorageImpl implements LocalStorage {
  final JsonData jsonData;
  LocalStorageImpl({required this.jsonData});
  @override
  Future<void> saveAzkarList() async {
    bool isDataFetched =
        await SharedPreferencesService.getBool(key: kIsDataFetched) ?? false;
    if (!isDataFetched) {
      ObjectBoxService objectBoxService = ObjectBoxService();
      List<AzkarModel> azkarList = await jsonData.getAzkarObjectsFromJsonData();

      for (var azkar in azkarList) {
        objectBoxService.azkarBox.put(azkar);
      }
      SharedPreferencesService.setBool(key: kIsDataFetched, value: true);
    }
  }

  @override
  AzkarModel getAzkarCategory({required String category}) {
    try {
      ObjectBoxService objectBoxService = ObjectBoxService();
      final query =
          objectBoxService.azkarBox
              .query(AzkarModel_.category.equals(category))
              .build();
      AzkarModel azkarList = query.find().first;
      query.close();
      return azkarList;
    } catch (e) {
      throw Exception(e);
    }
  }
}

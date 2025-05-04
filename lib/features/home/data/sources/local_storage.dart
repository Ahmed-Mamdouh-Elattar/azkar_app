// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:azkar_app/core/helper/constants.dart';
import 'package:azkar_app/core/services/objectbox_service.dart';
import 'package:azkar_app/core/services/shared_preferences_service.dart';
import 'package:azkar_app/features/home/data/models/azkar_model/azkar_model.dart';
import 'package:azkar_app/features/home/data/sources/json_data.dart';

abstract class LocalStorage {
  Future<void> saveAzkarList();
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
      log("length of azkarList : ${azkarList[0].category}");
      for (var azkar in azkarList) {
        objectBoxService.azkarBox.put(azkar);
      }
      SharedPreferencesService.setBool(key: kIsDataFetched, value: true);
    }
  }
}

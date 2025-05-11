import 'dart:convert';
import 'dart:developer';

import 'package:azkar_app/core/helper/constants.dart';
import 'package:azkar_app/core/models/azkar_model/azkar_model.dart';
import 'package:flutter/services.dart';

abstract class JsonData {
  Future<List<AzkarModel>> getAzkarObjectsFromJsonData();
}

class JsonDataImpl implements JsonData {
  @override
  Future<List<AzkarModel>> getAzkarObjectsFromJsonData() async {
    final String jsonString = await rootBundle.loadString(kJsonDataPath);
    final List<dynamic> jsonData = json.decode(jsonString);
    log("json data length: $jsonData");
    List<AzkarModel> azkarList =
        jsonData.map((e) => AzkarModel.fromJson(e)).toList();
    return azkarList;
  }
}

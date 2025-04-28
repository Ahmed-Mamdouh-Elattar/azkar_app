import 'package:azkar_app/features/home/data/models/azkar_model/azkar_model.dart';
import 'package:azkar_app/features/home/data/models/azkar_model/objectbox.g.dart';
import 'package:azkar_app/features/home/data/models/azkar_model/zeker_item.dart';

class ObjectBoxService {
  static final ObjectBoxService _instance = ObjectBoxService._internal();
  late final Store store;
  late final Box<AzkarModel> azkarBox;
  late final Box<ZekerItem> zekerItemBox;
  ObjectBoxService._internal();

  factory ObjectBoxService() => _instance;
  Future<void> init() async {
    store = await openStore();

    azkarBox = store.box<AzkarModel>();
    zekerItemBox = store.box<ZekerItem>();
  }

  void close() {
    store.close();
  }
}

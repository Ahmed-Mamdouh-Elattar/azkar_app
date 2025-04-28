import 'package:azkar_app/features/home/data/models/azkar_model/zeker_item.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class AzkarModel {
  @Id()
  int id = 0;
  final String category;
  final int totalItems;
  bool isCompleted;
  @Backlink()
  final zekerItems = ToMany<ZekerItem>();

  AzkarModel({
    required this.category,
    required this.totalItems,
    this.isCompleted = false,
  });

  factory AzkarModel.fromJson(Map<String, dynamic> json) {
    final azkarModel = AzkarModel(
      category: json["category"],
      totalItems: json["total_items"],
    );
    List<dynamic> items = json["items"];
    azkarModel.zekerItems.addAll(items.map((e) => ZekerItem.fromJson(e)));
    return azkarModel;
  }
}

import 'package:azkar_app/features/home/data/models/azkar_model/azkar_model.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ZekerItem {
  @Id()
  int id = 0;
  final String zekr;
  final int repeat;

  final String description;
  final azkarModel = ToOne<AzkarModel>();
  bool isCompleted;
  bool isFavorite;
  ZekerItem({
    required this.zekr,
    required this.repeat,
    required this.description,
    this.isCompleted = false,
    this.isFavorite = false,
  });

  factory ZekerItem.fromJson(Map<String, dynamic> json) => ZekerItem(
    zekr: json["zekr"],
    repeat: json["repeat"],
    description: json["description"],
  );
}

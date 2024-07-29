import 'package:hive/hive.dart';
//import 'package:build_runner/build_runner.dart';
part 'note_model.g.dart';
@HiveType(typeId: 0)
class NoteModel extends HiveObject{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;
  NoteModel(
      {required this.title,
      required this.subtitle,
      required this.color,
      required this.date});
}

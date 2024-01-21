import 'package:hive_flutter/hive_flutter.dart';
import 'package:tech_blog_search_app/utils/constants.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  await Hive.openBox<List<String>>(stringListKey);
}
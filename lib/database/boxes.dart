import 'package:skyconnect_starter/database/db.dart';
import 'package:hive/hive.dart';
import 'package:skyconnect_starter/database/db.dart';

class Boxes {
  static Box<MySetting> getMySettings() => Hive.box<MySetting>("mySettings");

  static Box<Filter> getFilters() => Hive.box<Filter>("filters");
}

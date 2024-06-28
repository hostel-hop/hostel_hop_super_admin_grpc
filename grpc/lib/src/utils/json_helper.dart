import 'package:mongo_dart/mongo_dart.dart';

class JsonHelper {
  static ObjectId objectIdFromJson(dynamic value) {
    return value as ObjectId;
  }
}

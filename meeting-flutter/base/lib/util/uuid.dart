import 'package:uuid/uuid.dart';

/// uuid generate
class UUID {
  static final Uuid uuid = Uuid();

  String genUUID() {
    return uuid.v4();
  }
}

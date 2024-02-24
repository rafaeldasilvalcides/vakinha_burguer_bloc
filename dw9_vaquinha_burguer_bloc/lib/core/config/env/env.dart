import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static Env? _instance;

  Env._();

  static Env get instance => _instance ??= Env._();

  Future<void> load() {
    return dotenv.load();
  }

  String? operator[](String key) {
    return dotenv.env[key];
  }
}

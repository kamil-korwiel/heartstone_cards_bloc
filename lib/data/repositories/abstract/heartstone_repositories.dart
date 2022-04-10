import '../../models/models.dart';

abstract class HeartStoneRepository {
  // API Methods
  Future<Info> getInfo();
}

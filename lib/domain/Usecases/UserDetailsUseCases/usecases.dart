import 'package:drink/domain/Repository/userdetails_repo.dart';

class GetNumberOfGlassesOfWaterNeeded {
  UserDetailsRepository repository;
  GetNumberOfGlassesOfWaterNeeded({required this.repository});
  Future<int> call(weight) {
    return repository.getNumberOfGlassesOfWaterNeeded(weight);
  }
}

class StoreToDataBase {
  UserDetailsRepository repository;
  StoreToDataBase({required this.repository});
  Future<void> call() async {
    return await repository.storeToDataBase();
  }
}

//the repository for UserDetails model.

abstract class UserDetailsRepository {
  Future<int> getNumberOfGlassesOfWaterNeeded(weight);
  Future<void> storeToDataBase();
}

import 'dart:developer';

import 'package:drink/domain/Repository/userdetails_repo.dart';

class UserdetailsRepoImpl implements UserDetailsRepository {
  @override
  Future<int> getNumberOfGlassesOfWaterNeeded(weight) async {
    double lbs = weight * 2.204623;
    int ounce = lbs ~/ 2;
    int glass = ounce ~/ 8;
    return Future.value(glass);
  }

  @override
  Future<void> storeToDataBase() async {
    await Future.delayed(const Duration(seconds: 3));
    log('Stored To DB');
  }
}

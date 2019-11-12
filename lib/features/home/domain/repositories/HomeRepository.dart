import 'package:rife_ai/features/home/data/datasources/homeProvider.dart';
import 'package:rife_ai/features/home/data/models/homeModel.dart';

class HomeRepository {

  HomeProvider _homeProvider = HomeProvider();

  Future<List<HomeModel>> databaseTest(int param1) async {
    return await _homeProvider.databaseTest(param1);
  }
}
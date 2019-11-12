import 'package:rife_ai/features/home/data/models/homeModel.dart';

class HomeProvider {
  Future<List<HomeModel>> databaseTest(int param1) async {
    // Chamada http ou dio aqui
    List<HomeModel> homeModelList = List<HomeModel>();

    for (int i = param1; i < param1+1; i++) {
      homeModelList.add(HomeModel(
        param1: i
      ));
    }

    return homeModelList;
  }
}
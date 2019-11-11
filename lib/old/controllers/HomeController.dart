import 'package:rife_ai/models/Mock/product-mock.model.dart';
import 'package:rife_ai/repositories/GenericRepository.dart';

class HomeController {
  GenericRepository repository;

  HomeController() {
    repository = new GenericRepository();
  }

  Future<List<ProductMockModel>> GetAllProducts() async {
    var url = "v2/list?page=2&limit=100";
    var dataList = await repository.Get(url);
    var response = dataList as List;
    return response.map((item) => new ProductMockModel.fromJson(item)).toList();
  }
}

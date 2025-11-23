import 'package:dio/dio.dart';
import 'package:store/helper/api.dart';

class GetAllCategories {
  Dio dio = Dio();

  Future<List<dynamic>> getAllCategories() async {
    Response response = await Api().get(
      uri: 'https://fakestoreapi.com/products/categories'
    );

    List<String> categoriesList = [];

    for (var category in response.data) {
      categoriesList.add(category);
    }

    return categoriesList;
  }
}

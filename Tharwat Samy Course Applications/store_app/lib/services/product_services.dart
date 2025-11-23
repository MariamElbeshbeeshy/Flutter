import 'package:dio/dio.dart';
import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class ProductServices {
  String baseURL = 'https://fakestoreapi.com/products';

  // add product method
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Response response = await Api().post(
      url: baseURL,
      data: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      },
    );

    int productID = response.data['id'];

    ProductModel addedProduct = ProductModel(
      id: productID,
      title: title,
      price: double.parse(price),
      description: description,
      category: category,
      image: image,
    );

    return addedProduct;
  }

  // update product method
  Future<ProductModel> updateProduct({
    required int id,
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Response response = await Api().put(
      url: '$baseURL/$id',
      data: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      },
    );

    ProductModel updatedProduct = ProductModel.fromJson(response.data);
    return updatedProduct;
  }

  // get all products method
  Future<List<ProductModel>> getAllProducts() async {
    Response response = await Api().get(uri: baseURL);
    List<Map<String, dynamic>> data = response.data;

    List<ProductModel> Products = [];

    for (var element in data) {
      ProductModel product = ProductModel.fromJson(element);
      Products.add(product);
    }

    return Products;
  }

  // get category products method
  Future<List<ProductModel>> getCategoryProducts(String category_name) async {
    Response response = await Api().get(
      uri: '$baseURL/category/$category_name',
    );

    List<ProductModel> products = [];

    for (var element in response.data) {
      ProductModel product = ProductModel.fromJson(element);
      products.add(product);
    }
    return products;
  }
}

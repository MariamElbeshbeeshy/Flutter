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
      price: price,
      description: description,
      category: category,
      image: image,
      favorited: false,
    );

    return addedProduct;
  }

  // update product method
  Future<ProductModel> updateProduct({required ProductModel product}) async {
    Response response = await Api().put(
      url: '$baseURL/${product.id}',
      data: {
        'title': product.title,
        'price': product.price,
        'description': product.description,
        'image': product.image,
        'category': product.category,
      },
    );

    ProductModel updatedProduct = ProductModel.fromJson(response.data);
    return updatedProduct;
  }

  // get all products method
  Future<List<ProductModel>> getAllProducts() async {
    Response response = await Api().get(uri: baseURL);
    List<dynamic> data = response.data;

    List<ProductModel> products = [];

    for (var element in data) {
      ProductModel product = ProductModel.fromJson(element);
      products.add(product);
    }
    if (products.isEmpty) {
      throw Exception('data isn\'t decoded right');
    } else {
      return products;
    }
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

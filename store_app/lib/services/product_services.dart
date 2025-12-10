import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class ProductServices with ChangeNotifier {
  String baseURL = 'https://fakestoreapi.com/products';

  List<ProductModel> _products = [];

  get products {
    return _products;
  }

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
    _products.add(addedProduct);
    notifyListeners();
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

    // preserve the favorited status from the old product
    final idx = _products.indexWhere((p) => p.id == updatedProduct.id);
    if (idx != -1) {
      updatedProduct.favorited = _products[idx].favorited;
      _products[idx] = updatedProduct;
    } else {
      // not found — add it (or choose to ignore; adding keeps cache consistent)
      _products.add(updatedProduct);
    }
    notifyListeners();
    return updatedProduct;
  }

  // get all products method
  Future<List<ProductModel>> getAllProducts() async {
    Response response = await Api().get(uri: baseURL);
    List<dynamic> data = response.data;

    // replace the list to avoid duplicates
    _products = data.map((e) => ProductModel.fromJson(e)).toList();

    if (_products.isEmpty) {
      throw Exception('data isn\'t decoded right');
    } else {
      notifyListeners();
      return _products;
    }
  }

  // get all categories method
  Future<List<dynamic>> getAllCategories() async {
    Response response = await Api().get(
      uri: 'https://fakestoreapi.com/products/categories',
    );

    List<String> categoriesList = [];

    for (var category in response.data) {
      categoriesList.add(category);
    }

    return categoriesList;
  }

  // get category products method
  Future<List<ProductModel>> getCategoryProducts(String category_name) async {
    // if main products are already loaded, filter from cache
    if (_products.isNotEmpty) {
      return _products.where((p) => p.category == category_name).toList();
    }

    // otherwise fetch from API and store in main cache
    Response response = await Api().get(
      uri: '$baseURL/category/$category_name',
    );

    List<ProductModel> categoryProducts = [];
    for (var element in response.data) {
      ProductModel product = ProductModel.fromJson(element);
      categoryProducts.add(product);
    }
    notifyListeners();
    return categoryProducts;
  }

  // update favorited status method
  void updateFavoritedStatus(int productId, bool isFavorited) {
    final idx = _products.indexWhere((p) => p.id == productId);
    if (idx != -1) {
      _products[idx].favorited = isFavorited;
      notifyListeners();
    }
  }
}

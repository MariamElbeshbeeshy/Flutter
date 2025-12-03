import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store/helper/show_message.dart';
import 'package:store/models/product_model.dart';
import 'package:store/screens/home_screen.dart';
import 'package:store/screens/product_details_screen.dart';
import 'package:store/services/product_services.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});
  static String id = 'add product screen';

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    String? title;
    String? price;
    String? description;
    String? image;
    String? category;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text("Add Product"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Product\'s Title';
                          }
                          return null;
                        },
                        onChanged: (value) => title = value,
                        style: TextStyle(color: Colors.deepPurple),
                        decoration: InputDecoration(hintText: 'Title'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Product\'s Description';
                          }
                          return null;
                        },
                        onChanged: (value) => description = value,
                        style: TextStyle(color: Colors.deepPurple),
                        decoration: InputDecoration(hintText: 'Description'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Product\'s Price';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        onChanged: (value) => price = value,
                        style: TextStyle(color: Colors.deepPurple),
                        decoration: InputDecoration(hintText: 'Price'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Product\'s Category';
                          }
                          return null;
                        },
                        onChanged: (value) => category = value,
                        style: TextStyle(color: Colors.deepPurple),
                        decoration: InputDecoration(hintText: 'Category'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Product\'s Image';
                          }
                          return null;
                        },
                        onChanged: (value) => image = value,
                        style: TextStyle(color: Colors.deepPurple),
                        decoration: InputDecoration(hintText: 'image'),
                      ),
                      SizedBox(height: 100),
                    ],
                  ),
                ),
                OutlinedButton(
                  onPressed: () async {
                    if (title != null &&
                        description != null &&
                        category != null &&
                        price != null &&
                        image != null) {
                      try {
                        setState(() {
                          isLoading = true;
                        });
                        ProductModel addedProduct = await ProductServices()
                            .addProduct(
                              title: title!,
                              description: description!,
                              category: category!,
                              price: price!,
                              image: image!,
                            );
                        ShowMessage(
                          context,
                          '✅',
                          'Added Product successfully.',
                          [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    ProductDetailsScreen.id,
                                    (Route<dynamic> route) =>
                                        route.settings.name == HomeScreen.id,
                                    arguments: addedProduct,
                                  ),
                              child: Text('Show'),
                            ),
                          ],
                        );
                      } catch (e) {
                        ShowMessage(
                          context,
                          '❌',
                          'Couldn\'t Add product.\nerror: ${e.toString()}',
                          [],
                        );
                      }
                      setState(() {
                        isLoading = false;
                      });
                    }
                  },
                  child: Text('Add Product'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

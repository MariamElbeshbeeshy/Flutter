import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';
import 'package:store/helper/show_message.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/product_services.dart';

class UpdateProductScreen extends StatefulWidget {
  static String id = 'update product screen';
  const UpdateProductScreen({super.key});

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.deepPurple,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text("Update Product"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 100),
                      TextFormField(
                        onChanged: (value) =>
                            product.title = value == '' ? product.title : value,
                        style: TextStyle(color: Colors.deepPurple),
                        decoration: InputDecoration(hintText: 'Title'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        onChanged: (value) => product.description = value == ''
                            ? product.description
                            : value,
                        style: TextStyle(color: Colors.deepPurple),
                        decoration: InputDecoration(hintText: 'Description'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) =>
                            product.price = value == '' ? product.price : value,
                        style: TextStyle(color: Colors.deepPurple),
                        decoration: InputDecoration(hintText: 'Price'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        onChanged: (value) => product.category = value == ''
                            ? product.category
                            : value,
                        style: TextStyle(color: Colors.deepPurple),
                        decoration: InputDecoration(hintText: 'Category'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        onChanged: (value) =>
                            product.image = value == '' ? product.image : value,
                        style: TextStyle(color: Colors.deepPurple),
                        decoration: InputDecoration(hintText: 'image'),
                      ),
                      SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () async {
                  setState(() {
                    isLoading = true;
                  });
                  try {
                    await Provider.of<ProductServices>(
                      context,
                      listen: false,
                    ).updateProduct(product: product);
                    ShowMessage(
                      context,
                      '✅',
                      'Updated Product successfully.',
                      [],
                    );
                  } catch (e) {
                    ShowMessage(
                      context,
                      '❌',
                      'Couldn\'t update product.\nerror: ${e.toString()}',
                      [],
                    );
                  }
                  setState(() {
                    isLoading = false;
                  });
                },

                child: Text('Submit Updates'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

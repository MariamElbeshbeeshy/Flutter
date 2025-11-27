import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';

class UpdateProductScreen extends StatelessWidget {
  static String id = 'update product screen';
  const UpdateProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //ProductModel product =
    //   ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
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
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter your email';
                      }
                      return null;
                    },
                    //onChanged: (value) => email = value,
                    style: TextStyle(color: Colors.deepPurple),
                    decoration: InputDecoration(hintText: 'Title'),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Price';
                      }
                      return null;
                    },
                    //onChanged: (value) => email = value,
                    style: TextStyle(color: Colors.deepPurple),
                    decoration: InputDecoration(hintText: 'Description'),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter your email';
                      }
                      return null;
                    },
                    //onChanged: (value) => email = value,
                    style: TextStyle(color: Colors.deepPurple),
                    decoration: InputDecoration(hintText: 'Price'),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter your email';
                      }
                      return null;
                    },
                    //onChanged: (value) => email = value,
                    style: TextStyle(color: Colors.deepPurple),
                    decoration: InputDecoration(hintText: 'Category'),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter your email';
                      }
                      return null;
                    },
                    //onChanged: (value) => email = value,
                    style: TextStyle(color: Colors.deepPurple),
                    decoration: InputDecoration(hintText: 'image'),
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
            OutlinedButton(onPressed: () {
              
            }, child: Text('Submit Updates')),
          ],
        ),
      ),
    );
  }
}

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/Models/category_model.dart';

class CategoryListTile extends StatelessWidget {
  final List<CategoryModel> categoryList;
  CategoryListTile({super.key, required this.categoryList});

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: categoryList.length,
            itemBuilder: (context, i) => Container(
              color: (i % 2 == 0) ? Color(0xff9747FF) : Color(0xfffbf7d2),
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
              child: Row(
                children: [
                  
                  Image.asset(
                    categoryList[i].image,
                    width: 60, 
                  ),
                  const SizedBox(
                    width: 16,
                  ), 
                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Aligns text to the left
                      children: [
                        Text(
                          categoryList[i].wordInJapanese,
                          style: TextStyle(
                            fontSize: 20,
                            color: (i % 2 == 0)
                                ? Colors.white
                                : Color(0xff4F4F4F),
                          ),
                        ),
                        Text(
                          categoryList[i].wordInEnglish,
                          style: TextStyle(
                            fontSize: 20,
                            color: (i % 2 == 0)
                                ? Colors.white
                                : Color(0xff4F4F4F),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // 3. This is your 'trailing' widget
                  IconButton(
                    onPressed: () async {
                      await player.play(AssetSource(categoryList[i].sound));
                    },
                    icon: Icon(
                      Icons.play_arrow,
                      color: (i % 2 == 0)
                          ? Color(0xfffbf7d2)
                          : Color(0xff9747FF),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}



// ListTile(
//           isThreeLine: true,
//           leading: Image.asset(categoryList[i].image),
//           title: Text(
//             categoryList[i].wordInJapanese,
//             style: TextStyle(
//               fontSize: 20,
//               color: (i % 2 == 0) ? Colors.white : Color(0xff4F4F4F),
//             ),
//           ),
//           subtitle: Text(
//             categoryList[i].wordInEnglish,
//             style: TextStyle(
//               fontSize: 20,
//               color: (i % 2 == 0) ? Colors.white : Color(0xff4F4F4F),
//             ),
//           ),
//           trailing: IconButton(
//             onPressed: () async {
//               await player.play(AssetSource(categoryList[i].sound));
//             },
//             icon: Icon(
//               Icons.play_arrow,
//               color: (i % 2 == 0) ? Color(0xfffbf7d2) : Color(0xff9747FF),
//             ),
//           ),
//           tileColor: (i % 2 == 0) ? Color(0xff9747FF) : Color(0xfffbf7d2),
//         ),
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Widgets/article_webpage.dart';

class NewsCard extends StatelessWidget {
  final ArticleModel articleModel;
  const NewsCard({super.key, required this.articleModel});

  @override
  build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ArticleWebView(
            articleTitle: articleModel.title,
            articleUrl: articleModel.url,
          ),
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Image(
              height: 250,
              fit: BoxFit.cover,
              image: NetworkImage(
                articleModel.image ??
                    "https://static.vecteezy.com/system/resources/previews/022/059/000/non_2x/no-image-available-icon-vector.jpg",
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            articleModel.title,
            style: TextStyle(color: Colors.black, fontSize: 18),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 3),
          Text(
            articleModel.subtitle ?? "",
            style: TextStyle(color: Colors.grey, fontSize: 14),
            maxLines: 1,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}

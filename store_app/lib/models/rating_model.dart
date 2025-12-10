class RatingModel {
  dynamic rate;
  int? rating_count;

  RatingModel({required this.rate, required this.rating_count});

  factory RatingModel.fromJson(Map<String, dynamic> jsonData) {
    return RatingModel(
      rate: jsonData['rate'],
      rating_count: jsonData['rating_count'],
    );
  }
}
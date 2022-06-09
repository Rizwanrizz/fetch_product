import 'package:get/get.dart';

class DataModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;

  DataModel(
      {this.id,
      this.price,
      this.title,
      this.description,
      this.category,
      this.image});
  var isFavorite = false.obs;
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        id: json["id"],
        title: json["title"],
        description: json['description'],
        category: json['category'],
        image: json['image'],
        price: json["price"].toDouble());
  }
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "price": price,
      "title": title,
      "description": description,
      "category": category,
      "image": image,
    };
  }
}

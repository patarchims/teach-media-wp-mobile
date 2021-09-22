part of 'models.dart';

class CategoryModel {
  int? id;
  int? count;
  String? description;
  String? link;
  String? name;
  String? slug;

  CategoryModel(
      {this.id, this.count, this.description, this.link, this.name, this.slug});

  CategoryModel.fromJson(json) {
    id = json['id'];
    count = json['count'];
    description = json['description'] ?? '';
    link = json['link'];
    name = json['name'];
    slug = json['slug'];
  }
}

part of 'models.dart';

class CategoryDetailModel {
  int? id;
  String? date;
  String? slug;
  late _TitleCategory titleCategory;
  late FeatureImage featureImage;
  late CategoryContent categoryContent;
  late ContentDetail contentDetail;

  CategoryDetailModel({
    this.id,
    this.date,
    this.slug,
    required this.titleCategory,
    required this.featureImage,
    required this.categoryContent,
    required this.contentDetail,
  });

  CategoryDetailModel.fromJson(json) {
    id = json['id'] as int;
    date = json['date'] as String;
    slug = json['slug'] as String;
    titleCategory = _TitleCategory.fromJson(json['title']);
    featureImage = FeatureImage.fromJson(json['better_featured_image']);
    categoryContent = CategoryContent.fromJson(json['content']);
    contentDetail = ContentDetail.fromJson(json['content']);
  }
}

class ContentDetail {
  String? content;
  bool protected = false;

  ContentDetail({
    this.content,
    this.protected = false,
  });
  ContentDetail.fromJson(json) {
    content = json['rendered'] as String;
    protected = json['protected'] as bool;
  }
}

class _TitleCategory {
  String? title = "";

  _TitleCategory({
    this.title,
  });

  _TitleCategory.fromJson(json) {
    title = json['rendered'] as String;
  }
}

class CategoryContent {
  String? content;

  CategoryContent({
    this.content,
  });
  CategoryContent.fromJson(json) {
    content = json['rendered'] as String;
  }
}

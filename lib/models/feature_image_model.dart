part of 'models.dart';

class FeatureImage {
  int? id;
  String? mediaType;
  late _MediaDetailImage mediaImage;

  FeatureImage({
    this.id,
    this.mediaType,
    required this.mediaImage,
  });

  FeatureImage.fromJson(json) {
    id = json['id'] as int;
    mediaType = json['media_type'] as String;
    mediaImage = _MediaDetailImage.fromJson(json['media_details']);
  }
}

class _MediaDetailImage {
  String? file;

  _MediaDetailImage({
    this.file,
  });

  _MediaDetailImage.fromJson(json) {
    file = json['file'] as String;
  }
}

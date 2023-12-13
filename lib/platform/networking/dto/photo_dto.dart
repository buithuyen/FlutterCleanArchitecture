import 'package:flutter_clean_architecture/domain/entity/photo.dart';

class PhotoDTO extends Photo {
  PhotoDTO({
    super.height,
    super.photoReference,
    super.width,
  });

  factory PhotoDTO.fromJson(Map<String, dynamic> json) => PhotoDTO(
        height: json['height'] as int,
        photoReference: json['photo_reference'] as String,
        width: json['width'] as int,
      );

  Map<String, dynamic> toJson() => {
        'height': height,
        'photo_reference': photoReference,
        'width': width,
      };
}

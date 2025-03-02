import 'dart:convert';
import 'dart:developer';

class ListBaseModel<T> {
  ListBaseModel({
    required this.items,
  });

  final List<T> items;

  factory ListBaseModel.fromJson(final String str, final Function(Map<String, dynamic>)? mappingFunction) {
    try {
      log(str);
      // JSON string'ini Map'e dönüştür
      final Map<String, dynamic> jsonData = json.decode(str);
      return ListBaseModel.fromMap(jsonData, mappingFunction);
    } catch (e) {
      throw Exception("JSON çözümleme hatası: $e");
    }
  }

  Map<String, dynamic> toJson() => toMap();

  factory ListBaseModel.fromMap(
      final Map<String, dynamic> json,
      final Function(Map<String, dynamic>)? mappingFunction,
      ) {
    try {
      if (json["items"] != null) {
        return ListBaseModel<T>(
          items: mappingFunction != null
              ? List<T>.from(json["items"].map((final x) => mappingFunction(x)))
              : List<T>.from(json["items"].map((final x) => x)),
        );
      } else {
        throw Exception("JSON'da 'items' alanı bulunamadı.");
      }
    } catch (e) {
      rethrow;
    }
  }

  Map<String, dynamic> toMap() => {
    "items": List<T>.from(items.map((final x) => x)),
  };
}

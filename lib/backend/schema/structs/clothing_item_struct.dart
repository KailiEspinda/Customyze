// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClothingItemStruct extends BaseStruct {
  ClothingItemStruct({
    String? name,
    String? image,
    String? category,
    String? id,
  })  : _name = name,
        _image = image,
        _category = category,
        _id = id;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static ClothingItemStruct fromMap(Map<String, dynamic> data) =>
      ClothingItemStruct(
        name: data['name'] as String?,
        image: data['image'] as String?,
        category: data['category'] as String?,
        id: data['id'] as String?,
      );

  static ClothingItemStruct? maybeFromMap(dynamic data) => data is Map
      ? ClothingItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'image': _image,
        'category': _category,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static ClothingItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClothingItemStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ClothingItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClothingItemStruct &&
        name == other.name &&
        image == other.image &&
        category == other.category &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([name, image, category, id]);
}

ClothingItemStruct createClothingItemStruct({
  String? name,
  String? image,
  String? category,
  String? id,
}) =>
    ClothingItemStruct(
      name: name,
      image: image,
      category: category,
      id: id,
    );

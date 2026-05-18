// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OutfitStruct extends BaseStruct {
  OutfitStruct({
    ClothingItemStruct? top,
    ClothingItemStruct? bottom,
    ClothingItemStruct? shoes,
    String? id,
  })  : _top = top,
        _bottom = bottom,
        _shoes = shoes,
        _id = id;

  // "top" field.
  ClothingItemStruct? _top;
  ClothingItemStruct get top => _top ?? ClothingItemStruct();
  set top(ClothingItemStruct? val) => _top = val;

  void updateTop(Function(ClothingItemStruct) updateFn) {
    updateFn(_top ??= ClothingItemStruct());
  }

  bool hasTop() => _top != null;

  // "bottom" field.
  ClothingItemStruct? _bottom;
  ClothingItemStruct get bottom => _bottom ?? ClothingItemStruct();
  set bottom(ClothingItemStruct? val) => _bottom = val;

  void updateBottom(Function(ClothingItemStruct) updateFn) {
    updateFn(_bottom ??= ClothingItemStruct());
  }

  bool hasBottom() => _bottom != null;

  // "shoes" field.
  ClothingItemStruct? _shoes;
  ClothingItemStruct get shoes => _shoes ?? ClothingItemStruct();
  set shoes(ClothingItemStruct? val) => _shoes = val;

  void updateShoes(Function(ClothingItemStruct) updateFn) {
    updateFn(_shoes ??= ClothingItemStruct());
  }

  bool hasShoes() => _shoes != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static OutfitStruct fromMap(Map<String, dynamic> data) => OutfitStruct(
        top: data['top'] is ClothingItemStruct
            ? data['top']
            : ClothingItemStruct.maybeFromMap(data['top']),
        bottom: data['bottom'] is ClothingItemStruct
            ? data['bottom']
            : ClothingItemStruct.maybeFromMap(data['bottom']),
        shoes: data['shoes'] is ClothingItemStruct
            ? data['shoes']
            : ClothingItemStruct.maybeFromMap(data['shoes']),
        id: data['id'] as String?,
      );

  static OutfitStruct? maybeFromMap(dynamic data) =>
      data is Map ? OutfitStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'top': _top?.toMap(),
        'bottom': _bottom?.toMap(),
        'shoes': _shoes?.toMap(),
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'top': serializeParam(
          _top,
          ParamType.DataStruct,
        ),
        'bottom': serializeParam(
          _bottom,
          ParamType.DataStruct,
        ),
        'shoes': serializeParam(
          _shoes,
          ParamType.DataStruct,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static OutfitStruct fromSerializableMap(Map<String, dynamic> data) =>
      OutfitStruct(
        top: deserializeStructParam(
          data['top'],
          ParamType.DataStruct,
          false,
          structBuilder: ClothingItemStruct.fromSerializableMap,
        ),
        bottom: deserializeStructParam(
          data['bottom'],
          ParamType.DataStruct,
          false,
          structBuilder: ClothingItemStruct.fromSerializableMap,
        ),
        shoes: deserializeStructParam(
          data['shoes'],
          ParamType.DataStruct,
          false,
          structBuilder: ClothingItemStruct.fromSerializableMap,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OutfitStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OutfitStruct &&
        top == other.top &&
        bottom == other.bottom &&
        shoes == other.shoes &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([top, bottom, shoes, id]);
}

OutfitStruct createOutfitStruct({
  ClothingItemStruct? top,
  ClothingItemStruct? bottom,
  ClothingItemStruct? shoes,
  String? id,
}) =>
    OutfitStruct(
      top: top ?? ClothingItemStruct(),
      bottom: bottom ?? ClothingItemStruct(),
      shoes: shoes ?? ClothingItemStruct(),
      id: id,
    );

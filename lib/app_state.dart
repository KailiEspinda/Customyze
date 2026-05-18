import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<ClothingItemStruct> _closetItems = [];
  List<ClothingItemStruct> get closetItems => _closetItems;
  set closetItems(List<ClothingItemStruct> value) {
    _closetItems = value;
  }

  void addToClosetItems(ClothingItemStruct value) {
    closetItems.add(value);
  }

  void removeFromClosetItems(ClothingItemStruct value) {
    closetItems.remove(value);
  }

  void removeAtIndexFromClosetItems(int index) {
    closetItems.removeAt(index);
  }

  void updateClosetItemsAtIndex(
    int index,
    ClothingItemStruct Function(ClothingItemStruct) updateFn,
  ) {
    closetItems[index] = updateFn(_closetItems[index]);
  }

  void insertAtIndexInClosetItems(int index, ClothingItemStruct value) {
    closetItems.insert(index, value);
  }

  List<OutfitStruct> _savedOutfits = [];
  List<OutfitStruct> get savedOutfits => _savedOutfits;
  set savedOutfits(List<OutfitStruct> value) {
    _savedOutfits = value;
  }

  void addToSavedOutfits(OutfitStruct value) {
    savedOutfits.add(value);
  }

  void removeFromSavedOutfits(OutfitStruct value) {
    savedOutfits.remove(value);
  }

  void removeAtIndexFromSavedOutfits(int index) {
    savedOutfits.removeAt(index);
  }

  void updateSavedOutfitsAtIndex(
    int index,
    OutfitStruct Function(OutfitStruct) updateFn,
  ) {
    savedOutfits[index] = updateFn(_savedOutfits[index]);
  }

  void insertAtIndexInSavedOutfits(int index, OutfitStruct value) {
    savedOutfits.insert(index, value);
  }

  ClothingItemStruct _currentTop = ClothingItemStruct();
  ClothingItemStruct get currentTop => _currentTop;
  set currentTop(ClothingItemStruct value) {
    _currentTop = value;
  }

  void updateCurrentTopStruct(Function(ClothingItemStruct) updateFn) {
    updateFn(_currentTop);
  }

  ClothingItemStruct _currentBottom = ClothingItemStruct();
  ClothingItemStruct get currentBottom => _currentBottom;
  set currentBottom(ClothingItemStruct value) {
    _currentBottom = value;
  }

  void updateCurrentBottomStruct(Function(ClothingItemStruct) updateFn) {
    updateFn(_currentBottom);
  }

  ClothingItemStruct _currentShoes = ClothingItemStruct();
  ClothingItemStruct get currentShoes => _currentShoes;
  set currentShoes(ClothingItemStruct value) {
    _currentShoes = value;
  }

  void updateCurrentShoesStruct(Function(ClothingItemStruct) updateFn) {
    updateFn(_currentShoes);
  }
}

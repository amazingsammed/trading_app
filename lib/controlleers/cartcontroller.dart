//import 'dart:js_util/js_util_wasm.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trading_app/models/item_model.dart';

class Cartcontroller extends GetxController {
  //var _items = {}.obs;
  var _items = <ItemClass>[].obs;

  void additem(ItemClass items) {
    if (_items.contains(items)) {
      Get.snackbar(
          "Item already added", "Increase the quantity in the cart view",
          duration: Duration(seconds: 1),
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red.shade100);
    } else {
      Get.snackbar("Dear User", "Item  added to Cart",
          duration: Duration(seconds: 1),
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red.shade100);
      _items.add(items);
    }
  }

  decreaseItem(ItemClass items, index) {
    if (_items.contains(items) && _items[index].quantity == 1) {
      Get.defaultDialog(
          middleText: 'Do you want to remove item from cart?',
          onConfirm: () {
            _items.remove(items);
            Get.back(closeOverlays: true);
          },
          onCancel: () {
            Get.back(closeOverlays: true);
          });
    } else {
      _items[index].quantity = _items[index].quantity - 1;
      _items.refresh();
    }
  }

  removeItem(ItemClass items, index) {
    _items.remove(items);
    _items.refresh();
  }

  additemcart(ItemClass items, index) {
    _items[index].quantity = _items[index].quantity + 1;
    print(_items[index].quantity);
    _items.refresh();
  }

  get Cart => _items;
}

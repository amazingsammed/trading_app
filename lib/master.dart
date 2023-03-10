import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trading_app/pages/account.dart';
import 'package:trading_app/pages/cart.dart';
import 'package:trading_app/pages/stores.dart';

import 'controlleers/mastercontroller.dart';
import 'pages/home.dart';
import 'pages/messages.dart';

class Master extends StatelessWidget {
  Master({Key? key}) : super(key: key);
  final MasterController controller =
      Get.put(MasterController(), permanent: false);

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomePage(),
      Stores(),
      CartPage(),
      Messagespage(),
      Accounts()
    ];

    return Scaffold(
      body: Obx(() =>
          IndexedStack(index: controller.tabIndex.value, children: screens)),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          onTap: controller.changeTabindex,
          currentIndex: controller.tabIndex.value,
          elevation: 2,
          //unselectedFontSize: 0,
          //selectedFontSize: 0,
          //showSelectedLabels: false,
          //showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.store), label: "Stores"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Messeges"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Account"),
          ],
        );
      }),
    );
  }
}

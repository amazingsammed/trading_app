import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:trading_app/controlleers/cartcontroller.dart';
import 'package:trading_app/models/item_model.dart';
import 'package:trading_app/pages/itemview.dart';
import 'package:trading_app/widgets/grid.dart';

import '../controlleers/mastercontroller.dart';

class HomePage extends StatelessWidget {
  final Cartcontroller cartcontroller = Get.put(Cartcontroller());
  final MasterController controller = Get.find();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        title: const Text('Shopping'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
        itemCount: items.length,
        itemBuilder: (c, index) {
          return InkWell(
              onTap: () {
                Get.to(ItemPage(item: items[index]));
              },
              child: Gridtile(items[index]));
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      ),
    );
  }
}

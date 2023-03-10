import 'package:flutter/material.dart';
import 'package:trading_app/models/item_model.dart';

class Gridtile extends StatelessWidget {
  final ItemClass product;
  Gridtile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        // decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(12),
        //     boxShadow: [
        //       BoxShadow(
        //           blurStyle: BlurStyle.outer,
        //           offset: Offset(2, 3),
        //           spreadRadius: 0.3,
        //           blurRadius: 1.5)
        //     ]),
        child: Column(
          children: [
            Container(
              height: 120,
              width: 120,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Image.asset(
                product.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              product.name,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}

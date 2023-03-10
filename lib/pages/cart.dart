import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trading_app/controlleers/cartcontroller.dart';
import 'package:trading_app/models/item_model.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);
  final Cartcontroller cartcontroller = Get.find();

  @override
  Widget build(BuildContext context) {
    List<ItemClass> cart = cartcontroller.Cart;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        title: Text('Cart'),
      ),
      body: Obx(() {
        return Container(
            child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            height: 12,
          ),
          itemBuilder: (context, index) {
            int total = cart[index].price * cart[index].quantity;

            return Dismissible(
              key: Key(cart[index].toString()),
              onDismissed: (DismissDirection dir) {
                cartcontroller.removeItem(cart[index], index);
              },
              child: Container(
                height: 100,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(cart[index].imagePath),
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cart[index].name),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                                '${cart[index].price.toString()} X ${cart[index].quantity}'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () => cartcontroller.decreaseItem(
                                      cart[index], index),
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Center(child: Text('-')),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Obx(() {
                                  return Text('${cart[index].quantity.obs}');
                                }),
                                SizedBox(
                                  width: 12,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('${cart[index].quantity.obs}');
                                    cartcontroller.additemcart(
                                        cart[index], index);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Center(child: Text('+')),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(total.toString()),
                        SizedBox(
                          height: 8,
                        ),
                        TextButton(onPressed: () {}, child: Text('Pay Now'))
                      ],
                    ),
                    Container(),
                  ],
                ),
              ),
            );
            //   ListTile(
            //   leading: ClipRect(
            //     child: Container(
            //       decoration:
            //           BoxDecoration(borderRadius: BorderRadius.circular(30)),
            //       height: 90,
            //       width: 70,
            //       child: CircleAvatar(
            //         backgroundImage: AssetImage(
            //           cart[index].imagePath,
            //         ),
            //         radius: 60,
            //       ),
            //     ),
            //   ),
            //   title: Text(cart[index].name),
            //   subtitle: Text('\n'
            //       'Price : ${cart[index].price.toString()} X ${cart[index].quantity}\n'
            //       'Total : $total'),
            // );
          },
          itemCount: cart.length,
        ));
      }),
    );
  }
}

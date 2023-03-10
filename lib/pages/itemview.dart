import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trading_app/models/item_model.dart';

import '../controlleers/cartcontroller.dart';
import '../controlleers/mastercontroller.dart';
import '../widgets/containers.dart';
import 'cart.dart';
import 'home.dart';
import 'messages.dart';

class ItemPage extends StatelessWidget {
  ItemClass item;
  ItemPage({Key? key, required this.item}) : super(key: key);
  final MasterController controller = Get.find();
  final Cartcontroller cartcontroller = Get.put(Cartcontroller());

  @override
  Widget build(BuildContext context) {
    int num = item.price * 3;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text('Item Preview'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 350,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(item.imagePath),
                            fit: BoxFit.cover)),
                  ),
                  ListTile(
                    title: Text(
                      item.name,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Icon(
                      Icons.star_rate,
                      color: Colors.yellow,
                    ),
                    subtitle: Text('GHS ${item.price.toString()}.23'),
                  ),
                  Divider(
                    height: 16,
                  ),
                  ExpansionTile(
                    title: Text("Specification"),
                    children: [
                      EListTile(title: 'Name', value: item.name),
                      EListTile(
                          title: 'Price',
                          value: 'GHS ${item.price.toString()}.00'),
                      EListTile(
                          title: 'Avaliable', value: item.avaliable.toString()),
                      EListTile(title: 'Store Name', value: item.storename),
                      EListTile(
                          title: 'Store Location', value: item.storelocation),
                    ],
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              ContainerWithIconCentered(
                icon: Icons.store,
                bgColor: Colors.purple,
              ),
              ContainerWithIconCentered(
                icon: Icons.message,
                bgColor: Colors.purple,
              ),
              ContainerWithTextCentered(
                ontap: () {
                  cartcontroller.additem(item);
                },
                text: 'Add To cart',
              ),
              ContainerWithTextCentered(
                text: 'Book now',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class EListTile extends StatelessWidget {
  String title;
  String value;
  EListTile({Key? key, required this.value, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('$title  :'),
      trailing: Text(value),
    );
  }
}

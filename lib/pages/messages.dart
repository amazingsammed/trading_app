import 'package:flutter/material.dart';
import 'package:trading_app/models/message_model.dart';

class Messagespage extends StatelessWidget {
  const Messagespage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Messages',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                child: Container(
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.note_add,
                            color: Colors.green,
                          ),
                          Text('Order')
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.crop_free,
                            color: Colors.orange,
                          ),
                          Text('Promotion')
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.speaker,
                            color: Colors.blue,
                          ),
                          Text('Activity')
                        ],
                      ),
                      Container(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return ListTile(
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                messagepage[index].time,
                                style: TextStyle(color: Colors.black38),
                              ),
                            ],
                          ),
                          title: Text(messagepage[index].title),
                          subtitle: Text(messagepage[index].subtitle),
                          leading: Container(
                            child: CircleAvatar(
                              child: Icon(Icons.add),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(
                            height: 5,
                          ),
                      itemCount: messagepage.length))
            ],
          ),
        ),
      ),
    );
  }
}

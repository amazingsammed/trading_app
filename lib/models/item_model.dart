class ItemClass {
  String imagePath;
  String name;
  int price;
  int avaliable;
  int total;
  int quantity;
  DateTime? date;
  String storeid;

  ItemClass(
      {required this.imagePath,
      required this.name,
      required this.price,
      this.date,
      this.storeid = 'abc',
      this.quantity = 1,
      this.avaliable = 10,
      this.total = 20});

  get storelocation => 'null';

  get storename => 'null';
}

List<ItemClass> items = [
  ItemClass(
    imagePath: 'images/bottle.jpg',
    name: 'Bottle',
    price: 12,
  ),
  ItemClass(
    imagePath: 'images/drone.jpg',
    name: 'Drone',
    price: 67,
  ),
  ItemClass(
    imagePath: 'images/phone.jpg',
    name: 'Phone',
    price: 900,
  ),
  ItemClass(
    imagePath: 'images/watch.jpg',
    name: 'Watch',
    price: 34,
  ),
  ItemClass(
    imagePath: 'images/mouse.jpg',
    name: 'Mouse',
    price: 18,
  ),
];

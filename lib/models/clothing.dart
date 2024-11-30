class Clothes {
  int id;
  String name;
  String img;
  String size;
  double price;

  Clothes({
    required this.id,
    required this.name,
    required this.img,
    required this.size,
    required this.price,
  });

  Clothes.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        img = data['img'],
        size = data['size'],
        price = data['price'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'img': img,
        'size': size,
        'price': price,
      };
}

class Products {
  String image;
  String name;
  String price;
  String description;

  Products(
      {required this.image,
      required this.name,
      required this.price,
      required this.description});
}

final product = [
  Products(
    image: 'assets/images/one.png',
    name: 'Xbox series x',
    price: '500',
    description:
        'lorem ipsum dolor sit amet consectetur adipisicing elit. id minus amet officiis perspiciatis quas odio delectus ex eius, saepe eum! neque enim id tenetur esse labore iure doloribus, excepturi aliquam.',
  ),
  Products(
    image: 'assets/images/two.png',
    name: 'Black Xbox controller',
    price: '70',
    description:
        'lorem ipsum dolor sit amet consectetur adipisicing elit. id minus amet officiis perspiciatis quas odio delectus ex eius, saepe eum! neque enim id tenetur esse labore iure doloribus, excepturi aliquam.',
  ),
  Products(
    image: 'assets/images/three.png',
    name: 'White Xbox controller',
    price: '60',
    description:
        'lorem ipsum dolor sit amet consectetur adipisicing elit. id minus amet officiis perspiciatis quas odio delectus ex eius, saepe eum! neque enim id tenetur esse labore iure doloribus, excepturi aliquam.',
  ),
  Products(
    image: 'assets/images/four.png',
    name: 'Xbox series s',
    price: '400',
    description:
        'lorem ipsum dolor sit amet consectetur adipisicing elit. id minus amet officiis perspiciatis quas odio delectus ex eius, saepe eum! neque enim id tenetur esse labore iure doloribus, excepturi aliquam.',
  ),
  Products(
    image: 'assets/images/five.png',
    name: 'Gaming headphones',
    price: '100',
    description:
        'lorem ipsum dolor sit amet consectetur adipisicing elit. id minus amet officiis perspiciatis quas odio delectus ex eius, saepe eum! neque enim id tenetur esse labore iure doloribus, excepturi aliquam.',
  ),
  Products(
    image: 'assets/images/six.png',
    name: 'Gaming headphones',
    price: '100',
    description:
        'lorem ipsum dolor sit amet consectetur adipisicing elit. id minus amet officiis perspiciatis quas odio delectus ex eius, saepe eum! neque enim id tenetur esse labore iure doloribus, excepturi aliquam.',
  ),
  Products(
    image: 'assets/images/seven.png',
    name: 'Gaming chair',
    price: '200',
    description:
        'lorem ipsum dolor sit amet consectetur adipisicing elit. id minus amet officiis perspiciatis quas odio delectus ex eius, saepe eum! neque enim id tenetur esse labore iure doloribus, excepturi aliquam.',
  ),
  Products(
    image: 'assets/images/eight.png',
    name: 'Gaming keyboard',
    price: '50',
    description:
        'lorem ipsum dolor sit amet consectetur adipisicing elit. id minus amet officiis perspiciatis quas odio delectus ex eius, saepe eum! neque enim id tenetur esse labore iure doloribus, excepturi aliquam.',
  ),
  Products(
    image: 'assets/images/nine.png',
    name: 'Gaming mouse',
    price: '30',
    description:
        'lorem ipsum dolor sit amet consectetur adipisicing elit. id minus amet officiis perspiciatis quas odio delectus ex eius, saepe eum! neque enim id tenetur esse labore iure doloribus, excepturi aliquam.',
  ),
];

class Profile {
  String icon;
  String name;

  Profile({
    required this.icon,
    required this.name,
  });
}

final profile = [
  Profile(icon: "assets/icons/cog.svg", name: "settings"),
  Profile(icon: "assets/icons/log-out.svg", name: "Logout"),
];

class CartData {
  String image;
  String name;
  String price;

  CartData({
    required this.image,
    required this.name,
    required this.price,
  });
}

final cartData = [
  CartData(
    image: 'assets/images/one.png',
    name: 'Xbox series x',
    price: '500',
  ),
  CartData(
    image: 'assets/images/two.png',
    name: 'Black Xbox controller',
    price: '70',
  )
];

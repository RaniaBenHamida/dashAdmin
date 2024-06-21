import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String? id;
  final String? restaurantId;
  final String name;
  final String category;
  final String description;
  final String imageUrl;
  final double price;
  // final int? index;

  const Product({
    this.id,
    required this.restaurantId,
    required this.name,
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.price,
    // this.index,
  });

  Product copyWith({
    String? id,
    String? restaurantId,
    String? name,
    String? category,
    String? description,
    String? imageUrl,
    double? price,
    // int? index,
  }) {
    return Product(
      id: id ?? this.id,
      restaurantId: restaurantId ?? this.restaurantId,
      name: name ?? this.name,
      category: category ?? this.category,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      // index: index ?? this.index,
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      'id': id,
      'restaurantId': restaurantId,
      'name': name,
      'category': category,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
    };
  }

  factory Product.fromSnapshot(Map<String, dynamic> snap) {
    return Product(
      id: snap['id'].toString(),
      restaurantId: snap['restaurantId'],
      name: snap['name'],
      category: snap['category'],
      description: snap['description'],
      imageUrl: snap['imageUrl'],
      price: snap['price'],
      // index: snap['index'],
    );
  }

  @override
  List<Object?> get props => [
        id,
        restaurantId,
        name,
        category,
        description,
        price,
        imageUrl,
        // index,
      ];

  static List<Product> products = const [
    Product(
      id: '1',
      restaurantId: 'MbyvrvKY1hdNohNU11EL',
      name: 'Margherita',
      category: 'Pizza',
      description: 'Tomatoes, mozzarella, basil',
      price: 4.99,
      imageUrl:
          'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    ),
    Product(
      id: '2',
      restaurantId: 'MbyvrvKY1hdNohNU11EL',
      name: '4 Formaggi',
      category: 'Pizza',
      description: 'Tomatoes, mozzarella, basil',
      price: 4.99,
      imageUrl:
          'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    ),
    Product(
      id: '3',
      restaurantId: 'MbyvrvKY1hdNohNU11EL',
      name: 'Baviera',
      category: 'Pizza',
      description: 'Tomatoes, mozzarella, basil',
      price: 4.99,
      imageUrl:
          'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    ),
    Product(
      id: '4',
      restaurantId: 'MbyvrvKY1hdNohNU11EL',
      name: 'Baviera',
      category: 'Pizza',
      description: 'Tomatoes, mozzarella, basil',
      price: 4.99,
      imageUrl:
          'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    ),
    Product(
      id: '5',
      restaurantId: 'MbyvrvKY1hdNohNU11EL',
      name: 'jus de KIWI',
      category: 'Drinks',
      description: 'A fresh drink',
      price: 1.99,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhh5YYneVSgnlrFPe2gsIfH2SxKwIlgcnVcQ&s',
    ),
    Product(
      id: '6',
      restaurantId: 'MbyvrvKY1hdNohNU11EL',
      name: 'Jus de fraise',
      category: 'Drinks',
      description: 'A fresh drink',
      price: 1.99,
      imageUrl:
          'https://images.unsplash.com/photo-1626200949410-dd50c64170c9?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Product(
      id: '7',
      restaurantId: 'MbyvrvKY1hdNohNU11EL',
      name: 'Jus d \'orange',
      category: 'Drinks',
      description: 'A fresh drink',
      price: 1.99,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN99qutV65F2qb8F6MMkUYEXTXb8i1jRnz4g&s',
    ),
    Product(
      id: '8',
      restaurantId: 'MbyvrvKY1hdNohNU11EL',
      name: 'Water',
      category: 'Drinks',
      description: 'A fresh drink',
      price: 1.99,
      imageUrl:
          'https://images.unsplash.com/photo-1591704951890-0862b2e98acb?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Ym91dGVpbGxlfGVufDB8fDB8fHww',
    ),
    Product(
      id: '9',
      restaurantId: 'MbyvrvKY1hdNohNU11EL',
      name: 'Caesar Salad',
      category: 'Salads',
      description: 'A fresh drink',
      price: 1.99,
      imageUrl:
          'https://media.istockphoto.com/id/953810510/photo/green-salad-with-fresh-vegetables.webp?b=1&s=170667a&w=0&k=20&c=36grn9PBgLylM5Obw5vioz_XU221ftZuD0UC0ZKq9lE=',
    ),
    Product(
      id: '10',
      restaurantId: 'MbyvrvKY1hdNohNU11EL',
      name: 'CheeseBurger',
      category: 'Burgers',
      description: 'A burger with Cheese',
      price: 9.99,
      imageUrl:
          'https://images.unsplash.com/photo-1550547660-d9450f859349?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YnVyZ2VyfGVufDB8fDB8fHww',
    ),
    Product(
      id: '11',
      restaurantId: 'MbyvrvKY1hdNohNU11EL',
      name: 'Chocolate Cake',
      category: 'Desserts',
      description: 'A cake with chocolate',
      price: 9.99,
      imageUrl:
          'https://media.istockphoto.com/id/1399203362/photo/slice-of-chocolate-cake-with-cream-filling-and-chocolate-shavings.webp?b=1&s=170667a&w=0&k=20&c=aVuPsTtKvMhENFHXESeq264FOOjUcd0ME4MsVTIUnZI=',
    )
  ];
}

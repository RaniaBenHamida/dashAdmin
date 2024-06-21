import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final int index;

  const Category({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.index,
  });

  Category copyWith({
    String? id,
    String? name,
    String? description,
    String? imageUrl,
    int? index,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      index: index ?? this.index,
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'index': index,
    };
  }

  factory Category.fromSnapshot(Map<String, dynamic> snap) {
    return Category(
      id: snap['id'].toString(),
      name: snap['name'],
      description: snap['description'],
      imageUrl: snap['imageUrl'],
      index: snap['index'],
    );
  }

  @override
  List<Object> get props => [id, name, description, imageUrl, index];

  static List<Category> categories = const [
    Category(
      id: '1',
      name: 'Salads',
      description: ' les “Lactuca”, les laitues (romaine, feuille de chêne, batavia) et les” Cichorium”, les chicorées (frisées, endives, scaroles).',
      imageUrl: 'images/avocado.png',
      index: 0,
    ),
    Category(
      id: '2',
      name: 'Desserts',
      description: 'Les fruits frais et colorés, tels que les baies juteuses, les tranches d \'agrumes vibrantes ou les kiwis verts éclatants, peuvent apporter une touche de fraîcheur et de vivacité à votre dessert',
      imageUrl: 'images/pancake.png',
      index: 1,
    ),
    Category(
      id: '3',
      name: 'Drinks',
      description: 'cocktail toute boisson incorporant plusieurs ingrédients mélangés. Les puristes restreindront quant à eux cette définition aux boissons alcoolisées',
      imageUrl: 'images/juice.png',
      index: 2,
    ),
    Category(
      id: '4',
      name: 'Pizza',
      description: 'Reine, ou Regina en italien',
      imageUrl: 'images/pizza.png',
      index: 3,
    ),
    Category(
      id: '5',
      name: 'Burgers',
      description: 'Un hamburger, ou par aphérèse burger, est un sandwich d\'origine allemande, composé de deux pains de forme ronde ',
      imageUrl: 'images/burger.png',
      index: 4,
    ),

       Category(
      id: '6',
      name: 'Plat maison',
      description: 'Spécialité de la maison',
      imageUrl: 'images/maison.png',
      index: 4,
    ),
  ];
}

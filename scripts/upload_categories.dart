import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_food_delivery_backend/firebase_options.dart';

class Category {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final num index;

  const Category({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.index,
  });

  Map<String, dynamic> toDocument() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'index': index,
    };
  }

  static List<Category> categories = const [
    Category(
      id: '1',
      name: 'Salads',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      imageUrl: 'images/avocado.png',
      index: 0,
    ),
    Category(
      id: '2',
      name: 'Desserts',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      imageUrl: 'images/pancake.png',
      index: 1,
    ),
    Category(
      id: '3',
      name: 'Drinks',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      imageUrl: 'images/juice.png',
      index: 2,
    ),
    Category(
      id: '4',
      name: 'Pizza',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      imageUrl: 'images/pizza.png',
      index: 3,
    ),
    Category(
      id: '5',
      name: 'Burgers',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
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
    // Add other categories as needed
  ];
}

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final firestore = FirebaseFirestore.instance;
  final batch = firestore.batch();

  for (var category in Category.categories) {
    var docRef = firestore.collection('categories').doc(category.id);
    batch.set(docRef, category.toDocument());
  }

  await batch.commit();
  print('Categories uploaded successfully!');
}

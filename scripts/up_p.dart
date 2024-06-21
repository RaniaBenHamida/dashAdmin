import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Product {
  final String? id;
  final String? restaurantId;
  final String name;
  final String category;
  final String description;
  final String imageUrl;
  final double price;

  const Product({
    this.id,
    required this.restaurantId,
    required this.name,
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

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
    );
  }

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
    // Ajoutez d'autres produits selon vos besoins
  ];
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final firestore = FirebaseFirestore.instance;
  final batch = firestore.batch();

  for (var product in Product.products) {
    var docRef = firestore.collection('products').doc(product.id);
    batch.set(docRef, product.toDocument());
  }

  await batch.commit();
  print('Products uploaded successfully!');
}

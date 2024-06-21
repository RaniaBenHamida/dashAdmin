import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_food_delivery_backend/firebase_options.dart';
import 'package:flutter_food_delivery_backend/models/models.dart';
// Adjust this path as necessary to import your models correctly

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await uploadRestaurants();
}

Future<void> uploadRestaurants() async {
  final firestore = FirebaseFirestore.instance;

  final restaurants = [
    Restaurant(
      id: 'MbyvrvKY1hdNohNU11EL',
      name: 'Golden Ice Gelato Artigianale',
      imageUrl:
          'https://images.unsplash.com/photo-1479044769763-c28e05b5baa5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
      description: 'This is the description.',
      tags: const ['italian', 'desserts'],
      categories: Category.categories,
      products: Product.products,
      openingHours: OpeningHours.openingHoursList,
    ),
    // Add more restaurants here if necessary
  ];

  try {
    final batch = firestore.batch();

    for (var restaurant in restaurants) {
      var docRef = firestore.collection('restaurants').doc(restaurant.id);
      batch.set(docRef, restaurant.toDocument());
    }

    await batch.commit();
    print('Restaurants uploaded successfully!');
  } catch (e) {
    print('Error uploading restaurants: $e');
  }
}

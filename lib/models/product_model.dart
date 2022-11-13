import 'package:flutter/material.dart';

class ProductModel {
  final int? id;
  final String? name;
  final String? description;
  final String? imageUrl;
  final int? price;
  final bool? isFavorite;
  final double? rate;
  final Color? color;

  ProductModel({
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.price,
    this.isFavorite = false,
    this.rate = 0.0,
    this.color,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      price: json['price'],
      isFavorite: json['isFavorite'],
      rate: json['rate'],
      color: json['color'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
      'isFavorite': isFavorite,
      'rate': rate,
      'color': color,
    };
  }
}

List<ProductModel> mockProduct = [
  ProductModel(
    id: 1,
    name: 'Stylish Chair',
    description:
        'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
    imageUrl: 'assets/illustration/chair.png',
    price: 50,
    isFavorite: true,
    rate: 3.0,
    color: Colors.green,
  ),
  ProductModel(
    id: 2,
    name: 'Modern Table',
    description:
        'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
    imageUrl: 'assets/illustration/modern_table.png',
    price: 75,
    isFavorite: false,
    rate: 3.5,
    color: Colors.red,
  ),
  ProductModel(
    id: 3,
    name: 'Wooden Chair',
    description:
        'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
    imageUrl: 'assets/illustration/modern_chair.png',
    price: 240,
    isFavorite: false,
    rate: 5.0,
    color: Colors.blue,
  ),
  ProductModel(
    id: 4,
    name: 'Brown Armchair',
    description:
        'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
    imageUrl: 'assets/illustration/brown_armchair.png',
    price: 210,
    isFavorite: false,
    rate: 3.9,
    color: Colors.yellow,
  ),
];

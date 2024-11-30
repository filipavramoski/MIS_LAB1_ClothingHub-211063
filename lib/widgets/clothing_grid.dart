import 'package:flutter/material.dart';
import '../models/clothing.dart';

class ClothingGrid extends StatefulWidget {
  final List<Clothes> clothing;
  const ClothingGrid({super.key, required this.clothing});

  @override
  State<ClothingGrid> createState() => _ClothingGridState();
}

class _ClothingGridState extends State<ClothingGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.clothing.map((clothing) {
        return Card(
          elevation: 3,
          child: Column(
            children: [
              Expanded(
                child: Image.network(
                  clothing.img,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      clothing.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      "\$${clothing.price.toStringAsFixed(2)}",
                      style: const TextStyle(color: Colors.grey),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          "/details",
                          arguments: clothing,
                        );
                      },
                      child: const Text("Details"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

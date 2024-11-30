import 'package:flutter/material.dart';
import '../models/clothing.dart';

class ClothesListView extends StatelessWidget {
  final List<Clothes> clothes;

  const ClothesListView({super.key, required this.clothes});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: clothes.length,
      itemBuilder: (context, index) {
        final item = clothes[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: ListTile(
            leading: Image.network(
              item.img,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(
              item.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Price: \$${item.price.toStringAsFixed(2)}"),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/details",
                  arguments: item,
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.red;
                  }
                  return const Color.fromARGB(255, 179, 198, 212);
                }),
                foregroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.white;
                  }
                  return Colors.black;
                }),
              ),
              child: const Text("Details"),
            ),
          ),
        );
      },
    );
  }
}

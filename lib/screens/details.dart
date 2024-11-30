import 'package:flutter/material.dart';
import '../models/clothing.dart';
import '../widgets/detail_back_button.dart';
import '../widgets/detail_image.dart';
import '../widgets/detail_title.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final Clothes item = ModalRoute.of(context)!.settings.arguments as Clothes;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailTitle(id: item.id, name: item.name),
            DetailImage(image: item.img),
            // Center(
            //   child: Image.network(
            //     item.img,
            //     width: 200,
            //     height: 200,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            const SizedBox(height: 16),
            // Text(
            //   item.name,
            //   style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            // ),
            const SizedBox(height: 8),
            Text(
              "Size: ${item.size}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              "Price: \$${item.price.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 18, color: Colors.green),
            ),
          ],
        ),
      ),
      floatingActionButton: const DetailBackButton(),
    );
  }
}

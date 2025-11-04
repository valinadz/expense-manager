import 'package:flutter/material.dart';
import '../models/product.dart';

class CartScreen extends StatelessWidget {
  final List<Product> cartItems;

  const CartScreen({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    double total = cartItems.fold(0, (sum, item) => sum + item.price);

    return Scaffold(
      backgroundColor: const Color(0xFFF3E5F5),
      appBar: AppBar(
        title: const Text("Keranjang Belanja"),
        backgroundColor: const Color(0xFF7B1FA2),
      ),
      body: cartItems.isEmpty
          ? const Center(
              child: Text(
                "Keranjang kamu masih kosong 🍩",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cartItems.length,
                      itemBuilder: (context, index) {
                        final item = cartItems[index];
                        return Card(
                          child: ListTile(
                            leading: Image.network(item.imageUrl, width: 60),
                            title: Text(item.name),
                            subtitle: Text("Rp ${item.price.toStringAsFixed(0)}"),
                          ),
                        );
                      },
                    ),
                  ),
                  const Divider(),
                  Text(
                    "Total: Rp ${total.toStringAsFixed(0)}",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7B1FA2)),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7B1FA2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 14),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Checkout berhasil! 🎉"),
                        ),
                      );
                    },
                    child: const Text("Checkout Sekarang"),
                  )
                ],
              ),
            ),
    );
  }
}

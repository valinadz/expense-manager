class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

final List<Product> productList = [
  Product(
    name: 'Cupcake Coklat',
    description: 'Cupcake lembut dengan topping coklat premium.',
    price: 25000,
    imageUrl:
        'https://images.unsplash.com/photo-1606756790138-8c3a1f6b1f3a?auto=format&fit=crop&w=600&q=60',
  ),
  Product(
    name: 'Kopi Latte',
    description: 'Kopi latte manis dengan busa susu lembut.',
    price: 20000,
    imageUrl:
        'https://images.unsplash.com/photo-1509042239860-f550ce710b93?auto=format&fit=crop&w=600&q=60',
  ),
  Product(
    name: 'Donat Gula',
    description: 'Donat klasik tabur gula halus.',
    price: 15000,
    imageUrl:
        'https://images.unsplash.com/photo-1589308078055-187403e8f7e0?auto=format&fit=crop&w=600&q=60',
  ),
  Product(
    name: 'Brownies',
    description: 'Brownies legit dengan lelehan coklat mewah.',
    price: 30000,
    imageUrl:
        'https://images.unsplash.com/photo-1605475128023-9a5b6bdb6c73?auto=format&fit=crop&w=600&q=60',
  ),
];

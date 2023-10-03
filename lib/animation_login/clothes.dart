import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothesCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clothes Category'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 0.7,
        ),
        itemCount: clothesCategories.length,
        itemBuilder: (context, index) {
          return ClothesCategoryCard(category: clothesCategories[index]);
        },
      ),
    );
  }
}

class ClothesCategory {
  final String title;
  final String imageUrl;
  final double price;
  final double discount;
  final Color color;
  final String offer;

  ClothesCategory({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.discount,
    required this.color,
    required this.offer,
  });
}

final List<ClothesCategory> clothesCategories = [
  ClothesCategory(
    title: 'Dresses',
    imageUrl:
        'https://www.aristobrat.in/cdn/shop/products/CS_ClassicWhite_06_1080x.jpg?v=1614938700',
    price: 49.99,
    discount: 20.0,
    color: Colors.pink,
    offer: 'Buy 1 Get 1 Free',
  ),
  ClothesCategory(
    title: 'Shirts',
    imageUrl:
        'https://www.aristobrat.in/cdn/shop/products/CS_ClassicWhite_06_1080x.jpg?v=1614938700',
    price: 29.99,
    discount: 10.0,
    color: Colors.blue,
    offer: '50% Off',
  ),
  ClothesCategory(
    title: 'Jacket',
    imageUrl:
        'data:image/jpeg;base64,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',
    price: 39.99,
    discount: 15.0,
    color: Colors.indigo,
    offer: 'Limited Stock',
  ),
  // Add more categories...
];

class ClothesCategoryCard extends StatelessWidget {
  final ClothesCategory category;

  ClothesCategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle category selection
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryDetailsPage(category: category),
          ),
        );
      },
      child: Card(
        elevation: 4.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              category.imageUrl,
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8.0),
            Text(
              category.title,
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryDetailsPage extends StatelessWidget {
  final ClothesCategory category;

  const CategoryDetailsPage({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              category.imageUrl,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              'Price: \$${category.price.toStringAsFixed(2)}',
              style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            Text(
              'Discount: ${category.discount.toStringAsFixed(2)}%',
              style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            // Text(
            //   'Color: ${category.color}',
            //   style: const TextStyle(
            //       fontSize: 16.0,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.black87),
            // ),
            Text(
              'Offer: ${category.offer}',
              style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle adding to cart
                // You can implement cart functionality here
                addToCart(category);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Item Added to Cart'),
                      content: Text('${category.title} has been added to your cart.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Add to Cart'),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                // Handle buying the item
                // You can implement checkout/buying functionality here
                buyItem(category);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Item Purchased'),
                      content: Text('${category.title} has been purchased.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}
// Cart implementation
List<ClothesCategory> cartItems = [];

void addToCart(ClothesCategory item) {
  cartItems.add(item);
}

void buyItem(ClothesCategory item) {
  // Simulate a purchase process
  if (cartItems.contains(item)) {
    // Process payment (simulated)
    bool paymentSuccessful = processPayment(item.price);

    if (paymentSuccessful) {
      // Remove the item from the cart
      cartItems.remove(item);
      // Update inventory (simulated)
      updateInventory(item);
      // Show order confirmation (simulated)
      showOrderConfirmation(item);
    }
  }
}

bool processPayment(double amount) {
  // Simulate payment processing
  return true; // Payment successful
}

void updateInventory(ClothesCategory item) {
  // Simulate updating inventory
  print('${item.title} inventory updated.');
}

void showOrderConfirmation(ClothesCategory item) {
  // Simulate showing an order confirmation dialog
  print('Order confirmed: ${item.title}');
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartItems[index].title),
            subtitle: Text('\$${cartItems[index].price.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}

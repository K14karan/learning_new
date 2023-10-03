import 'package:flutter/material.dart';

class Order {
  final String orderNumber;
  final String status;
  final List<String> trackingStatuses;

  Order({
    required this.orderNumber,
    required this.status,
    required this.trackingStatuses,
  });
}

final Order exampleOrder = Order(
  orderNumber: '123456',
  status: 'Shipped',
  trackingStatuses: ['Order Placed', 'Processing', 'Shipped', 'Out for Delivery', 'Delivered'],
);

class OrderDetailsPage extends StatelessWidget {
  final Order order;

  const OrderDetailsPage({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Order Number: ${order.orderNumber}'),
                const SizedBox(height: 16.0),
                Text('Order Status: ${order.status}'),
                const SizedBox(height: 16.0),
                const Text('Tracking Status:'),
                const SizedBox(height: 8.0),
                OrderTrackingIndicator(
                  currentStep: order.trackingStatuses.indexOf(order.status),
                  totalSteps: order.trackingStatuses.length,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: order.trackingStatuses.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(order.trackingStatuses[index]),
                  leading: CircleAvatar(
                    radius: 10,
                    backgroundColor: index <= order.trackingStatuses.indexOf(order.status)
                        ? Colors.blue
                        : Colors.grey,
                    child: Text(
                      (index + 1).toString(),
                      style: const TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OrderTrackingIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const OrderTrackingIndicator({super.key, required this.currentStep, required this.totalSteps});

  @override
  Widget build(BuildContext context) {
    List<Widget> progressSteps = [];

    for (int step = 1; step <= totalSteps; step++) {
      progressSteps.add(
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: step <= currentStep ? Colors.blue : Colors.grey,
          ),
          child: Center(
            child: Text(
              step.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );

      if (step < totalSteps) {
        progressSteps.add(
          Expanded(
            child: Container(
              height: 2,
              color: step <= currentStep ? Colors.blue : Colors.grey,
            ),
          ),
        );
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: progressSteps,
    );
  }
}

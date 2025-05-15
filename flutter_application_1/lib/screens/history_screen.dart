import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction History'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 10, // Mock data count
        itemBuilder: (context, index) {
          return _buildTransactionItem(context, index);
        },
      ),
    );
  }

  Widget _buildTransactionItem(BuildContext context, int index) {
    // Mock data
    final transactions = [
      {'type': 'Bus Ride', 'amount': '-\$2.50', 'date': 'May 25, 2024', 'time': '9:30 AM'},
      {'type': 'Add Money', 'amount': '+\$20.00', 'date': 'May 24, 2024', 'time': '2:15 PM'},
      {'type': 'Light Rail', 'amount': '-\$3.50', 'date': 'May 24, 2024', 'time': '8:45 AM'},
      {'type': 'Bus Ride', 'amount': '-\$2.50', 'date': 'May 23, 2024', 'time': '5:30 PM'},
      {'type': 'Add Money', 'amount': '+\$50.00', 'date': 'May 22, 2024', 'time': '11:20 AM'},
    ];

    final transaction = transactions[index % transactions.length];
    final isPositive = transaction['amount']!.startsWith('+');

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: isPositive ? Colors.green : Colors.blue,
          child: Icon(
            isPositive ? Icons.add : Icons.directions_bus,
            color: Colors.white,
          ),
        ),
        title: Text(
          transaction['type']!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          '${transaction['date']!} at ${transaction['time']!}',
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
        trailing: Text(
          transaction['amount']!,
          style: TextStyle(
            color: isPositive ? Colors.green : Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        onTap: () {
          // TODO: Show transaction details
        },
      ),
    );
  }
} 
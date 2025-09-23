import 'package:flutter/material.dart';
import '../models/expense.dart';
import '../widgets/expense_card.dart';

class ExpenseListScreen extends StatelessWidget {
  const ExpenseListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Expense> expenses = [
      Expense(
        id: '1',
        title: 'Grocery Shopping',
        amount: 150000,
        category: 'Food',
        date: DateTime(2024, 9, 15),
        description: 'Weekly grocery shopping at supermarket',
      ),
      Expense(
        id: '2',
        title: 'Gas Station',
        amount: 50000,
        category: 'Transportation',
        date: DateTime(2024, 9, 14),
        description: 'Refuel motorcycle',
      ),
      Expense(
        id: '3',
        title: 'Coffee Shop',
        amount: 25000,
        category: 'Food',
        date: DateTime(2024, 9, 14),
        description: 'Morning coffee with friends',
      ),
      Expense(
        id: '4',
        title: 'Internet Bill',
        amount: 300000,
        category: 'Utilities',
        date: DateTime(2024, 9, 13),
        description: 'Monthly internet subscription',
      ),
      Expense(
        id: '5',
        title: 'Movie Tickets',
        amount: 100000,
        category: 'Entertainment',
        date: DateTime(2024, 9, 12),
        description: 'Weekend movie with family',
      ),
      Expense(
        id: '6',
        title: 'Book Purchase',
        amount: 75000,
        category: 'Education',
        date: DateTime(2024, 9, 11),
        description: 'Programming books for study',
      ),
      Expense(
        id: '7',
        title: 'Lunch',
        amount: 35000,
        category: 'Food',
        date: DateTime(2024, 9, 11),
        description: 'Lunch at restaurant',
      ),
      Expense(
        id: '8',
        title: 'Bus Fare',
        amount: 10000,
        category: 'Transportation',
        date: DateTime(2024, 9, 10),
        description: 'Daily commute to office',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              border: Border(
                bottom: BorderSide(color: Colors.blue.shade200),
              ),
            ),
            child: Column(
              children: [
                Text(
                  'Total Expenses',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  _calculateTotal(expenses),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: expenses.length,
              itemBuilder: (context, index) {
                return ExpenseCard(expense: expenses[index]);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Add expense feature coming soon!')),
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }

  String _calculateTotal(List<Expense> expenses) {
    double total = expenses.fold(0, (sum, expense) => sum + expense.amount);
    return 'Rp ${total.toStringAsFixed(0)}';
  }
}

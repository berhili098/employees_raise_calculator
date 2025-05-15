// import 'package:employees_raise_calculator/models/domain/employee.dart';
import 'package:employees_raise_calculator/models/persistence/employee_collection.dart';
import 'package:employees_raise_calculator/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/employee_repository.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final employeesAsync = ref.watch(rankedEmployeesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Raise Calculator'),
        actions: [IconButton(icon: const Icon(Icons.refresh), onPressed: _isLoading ? null : _loadSampleData)],
      ),
      body: employeesAsync.when(
        data: (employees) => _buildEmployeeList(employees),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }

  Widget _buildEmployeeList(List<EmployeeCollection> employees) {
    if (employees.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('No employees found'),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: _isLoading ? null : _loadSampleData, child: const Text('Load Sample Data')),
          ],
        ),
      );
    }

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: employees.length,
            itemBuilder: (context, index) {
              final employee = employees[index];
              final medal = index < 3 ? ['🥇', '🥈', '🥉'][index] : '  ';

              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: CircleAvatar(child: Text(employee.name?.substring(0, 1) ?? "N/A")),
                  title: Text('$medal ${employee.name}'),
                  subtitle: Text(
                    'Score: ${employee.performanceScore().toStringAsFixed(2)}\n'
                    'Completed: ${employee.totalCompleted}, '
                    'Failures: ${employee.totalFailures}, '
                    'Error rate: ${employee.errorRate.toPercent()}',
                  ),
                  isThreeLine: true,
                ),
              );
            },
          ),
        ),
        if (employees.isNotEmpty)
          Container(
            color: Colors.green.shade100,
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Icon(Icons.emoji_events, color: Colors.amber, size: 36),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    '🏆 Raise goes to: ${employees.first.name}',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Future<void> _loadSampleData() async {
    setState(() => _isLoading = true);
    try {
      await ref.read(employeeRepositoryProvider).addSampleData();
      ref.invalidate(rankedEmployeesProvider);
    } finally {
      setState(() => _isLoading = false);
    }
  }
}

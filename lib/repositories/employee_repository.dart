import 'package:employees_raise_calculator/models/persistence/employee_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'employee_repository.g.dart';

class EmployeeRepository {
  late Future<Isar> db;

  EmployeeRepository() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    return Isar.open(schemas: [EmployeeCollectionSchema], directory: dir.path);
  }

  Future<List<EmployeeCollection>> getAllEmployees() async {
    final isar = await db;
    final collections = isar.employeeCollections.where().findAll();

    final employees = <EmployeeCollection>[];
    for (final collection in collections) {
      employees.add(collection);
    }

    return employees;
  }

  Future<EmployeeCollection?> getEmployee(int id) async {
    final isar = await db;
    final collection = isar.employeeCollections.get(id);
    if (collection == null) return null;

    return collection;
  }

  Future<int> saveEmployee(EmployeeCollection employee) async {
    final isar = await db;
    isar.writeAsync((isar) => isar.employeeCollections.put(employee));
    return employee.id;
  }

  Future<bool> deleteEmployee(int id) async {
    final isar = await db;
    return isar.writeAsync((idar) => isar.employeeCollections.delete(id));
  }

  Future<int> addWorkToEmployee(int employeeId, WorkCollection work) async {
    final isar = await db;
    EmployeeCollection? employeeCollection = isar.employeeCollections.get(employeeId);

    if (employeeCollection == null) {
      throw Exception('Employee not found');
    }

    employeeCollection.workList.add(work);

    isar.writeAsync((isar) => isar.employeeCollections.put(employeeCollection));
    return employeeId;
  }

  Future<List<EmployeeCollection>> getRankedEmployees() async {
    final employees = await getAllEmployees();
    employees.sort((a, b) => b.performanceScore().compareTo(a.performanceScore()));
    return employees;
  }

  // For demo purposes - add sample data
  Future<void> addSampleData() async {
        final isar = await db;

    
    // Create domain models
    final alice = EmployeeCollection(
      id: isar.employeeCollections.autoIncrement(),
      name: 'Alice',
      workList: [
        WorkCollection( description: 'Task 1', status: WorkStatus.success),
        WorkCollection(description: 'Task 2', status: WorkStatus.failure),
        WorkCollection(description: 'Task 3', status: WorkStatus.success),
      ],
    );

    final bob = EmployeeCollection(
      id: isar.employeeCollections.autoIncrement(),

      name: 'Bob',
      workList: [
        for (int i = 0; i < 1000; i++) WorkCollection(description: 'T$i', status: WorkStatus.success),
        for (int i = 0; i < 50; i++) WorkCollection(description: 'F$i', status: WorkStatus.failure),
      ],
    );

    final dina = EmployeeCollection(
      id: isar.employeeCollections.autoIncrement(),

      name: 'Dina',
      workList: [
        for (int i = 0; i < 20; i++) WorkCollection(description: 'T$i', status: WorkStatus.success),
        for (int i = 0; i < 1; i++) WorkCollection(description: 'F$i', status: WorkStatus.failure),
      ],
    );

    final oussama = EmployeeCollection(
      id: isar.employeeCollections.autoIncrement(),

      name: 'Oussama',
      workList: [
        for (int i = 0; i < 5000; i++) WorkCollection(description: 'T$i', status: WorkStatus.success),
        for (int i = 0; i < 5000; i++) WorkCollection(description: 'F$i', status: WorkStatus.failure),
      ],
    );

    // Save to database
    // final isar = await db;
    await isar.writeAsync((isar) {
      isar.employeeCollections.clear();
      // await isar.workCollections.clear();
    });

    await saveEmployee(alice);
    await saveEmployee(bob);
    await saveEmployee(dina);
    await saveEmployee(oussama);
  }
}

@riverpod
EmployeeRepository employeeRepository(Ref ref) {
  return EmployeeRepository();
}

@riverpod
Future<List<EmployeeCollection>> rankedEmployees(Ref ref) {
  final repository = ref.watch(employeeRepositoryProvider);
  return repository.getRankedEmployees();
}

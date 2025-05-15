import 'package:employees_raise_calculator/utils/extensions.dart';
import 'package:isar/isar.dart';

part 'employee_collection.g.dart';

@collection
class EmployeeCollection {
  final int id;
  String? name;

  List<WorkCollection> workList = [];

  EmployeeCollection({required this.id, this.name, this.workList = const []});

  int get totalCompleted =>
      workList.where((w) => w.status == WorkStatus.success || w.status == WorkStatus.failure).length;

  int get totalFailures => workList.where((w) => w.status == WorkStatus.failure).length;

  double get errorRate => totalCompleted == 0 ? 0 : totalFailures / totalCompleted;

  double performanceScore() {
    if (totalCompleted == 0) return 0;

    final errorRate = totalFailures / totalCompleted;

    if (errorRate <= 0.05) return totalCompleted * 1.2;
    if (errorRate <= 0.1) return totalCompleted * 1.0;
    if (errorRate <= 0.2) return totalCompleted * 0.8;
    if (errorRate <= 0.3) return totalCompleted * 0.5;
    if (errorRate <= 0.4) return totalCompleted * 0.3;
    return totalCompleted * 0.1; // For error rates above 40%
  }

  //       totalCompleted - (totalFailures * penalty);

  @override
  String toString() {
    return '$name - Completed: $totalCompleted, Failures: $totalFailures, Score: ${performanceScore().toStringAsFixed(2)}, Error rate ${errorRate.toPercent()}';
  }
}

@embedded
class WorkCollection {
  String? description;
  WorkStatus status = WorkStatus.pending;
  WorkCollection({this.description, this.status = WorkStatus.pending});
}

enum WorkStatus {
  // @JsonValue('pending')
  pending,

  // @JsonValue('started')
  started,

  // @JsonValue('success')
  success,

  // @JsonValue('failure')
  failure,
}

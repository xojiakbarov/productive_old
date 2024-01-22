import 'package:productive/features/tasks/data/data_source/remote.dart';
import 'package:productive/features/tasks/data/models/task.dart';

class TaskRepository {
  final TaskRemoteDataSource taskRemoteDataSource;
  TaskRepository({required this.taskRemoteDataSource});

  Future<List<TaskModel>> getTasks() async {
    return taskRemoteDataSource.getTasks();
  }

  Future<bool> createTask({required TaskModel task}) async {
    return taskRemoteDataSource.createTask(task: task);
  }
}

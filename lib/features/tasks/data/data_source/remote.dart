import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:productive/core/exception/exception.dart';

import '../models/task.dart';

abstract class TaskRemoteDataSource {
  Future<List<TaskModel>> getTasks();

  Future<bool> createTask({
    required TaskModel task,
  });

  factory TaskRemoteDataSource() => _TaskRemoteDataSourceImpl();
}

class _TaskRemoteDataSourceImpl implements TaskRemoteDataSource {
  @override
  Future<List<TaskModel>> getTasks() async {
    try {
      final collection =
          await FirebaseFirestore.instance.collection('tasks').get();

      final tasks = collection.docs
          .map((item) => TaskModel.fromJson(item.data(), item.id))
          .toList();

      return tasks;
    } catch (error) {
      print(error);
      throw ServerException(errorMassege: 'Xatolik yuz berdi!', errorCode: 500);
    }
  }

  @override
  Future<bool> createTask({
    required TaskModel task,
  }) async {
    try {
      await FirebaseFirestore.instance.collection('tasks').add(task.toJson());
      return true;
    } catch (error) {
      print(error);
      throw ServerException(errorMassege: 'Xatolik yuz berdi!', errorCode: 500);
    }
  }
}

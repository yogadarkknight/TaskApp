import 'package:get/get.dart';
import 'package:training/app/data/providers/task/provider.dart';
import 'package:training/app/data/services/storage/repository.dart';
import 'package:training/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
    ),
    );
  }
}
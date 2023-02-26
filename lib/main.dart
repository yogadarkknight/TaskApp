import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:training/app/data/services/storage/repository.dart';
import 'package:equatable/equatable.dart';
import 'package:training/app/modules/home/binding.dart';
import 'package:training/app/modules/home/view.dart';
import 'app/data/services/storage/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async{
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'To Do List using GetX',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      initialBinding: HomeBinding(),
      builder: EasyLoading.init(),
    );
  }
}

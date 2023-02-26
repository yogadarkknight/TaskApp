import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training/app/core/utils/extensions.dart';
import 'package:training/app/modules/home/controller.dart';

class DetailPage extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
  DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var task = homeCtrl.task.value!;
    var color = HexColor.fromHex(task.color);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(3.0.wp),
            child: Row(
              children: [
                IconButton(
                    onPressed: (){
                      Get.back();
                      homeCtrl.changeTask(null);
                    },
                    icon: const Icon(Icons.arrow_back),)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.0.wp,
            ),
            child: Row(
              children: [
                Icon(IconData(
                  task.icon,
                  fontFamily: 'MaterialIcons',
                ),
                  color: color,
                ),
                SizedBox(width: 3.0.wp),
                Text(task.title,
                style: TextStyle(
                  fontSize: 12.0.sp,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
          ),
          Obx( () {
            var totalTodos = homeCtrl.doingTodos.length + homeCtrl.doneTodos.length;
            return Padding(
              padding:EdgeInsets.only(
                left: 16.0.wp,
                top: 3.0.wp,
                right: 16.0.wp
              ),
              child: Row(
                children: [
                  Text('$totalTodos Tasks',
              style: TextStyle(
                fontSize: 12.0.sp,
                color: Colors.grey,
              ),
                  ),
                ],
              ),
            );
          }
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:eduance/constants/colors.dart';
import 'package:eduance/models/module.dart';
import 'package:eduance/screens/detail/widget/course_module.dart';

class CourseProgress extends StatelessWidget {
  final moduleList = Module.generateModule();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'The Progress',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: kFont),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Image.network(
                      'https://cdn3.iconfinder.com/data/icons/faticons/32/grid-2-01-512.png',
                      width: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.network(
                      'https://www.freeiconspng.com/thumbs/list-icon/checklist-icon-checklist-icon-png-list-icon-7.png',
                      width: 25,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            ...moduleList.map((e) => CourseModule(e)).toList()
            //CourseModule(moduleList[0]),
          ],
        ));
  }
}

class CourseProgress1 extends StatelessWidget {
  final moduleList = Module1.generatemodule1();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'The Progress',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: kFont),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Image.network(
                      'https://cdn3.iconfinder.com/data/icons/faticons/32/grid-2-01-512.png',
                      width: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.network(
                      'https://www.freeiconspng.com/thumbs/list-icon/checklist-icon-checklist-icon-png-list-icon-7.png',
                      width: 25,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            ...moduleList.map((e) => CourseModule1(e)).toList()
            //CourseModule(moduleList[0]),
          ],
        ));
  }
}

class CourseProgress2 extends StatelessWidget {
  final moduleList = Module2.generatemodule2();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'The Progress',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: kFont),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Image.network(
                      'https://cdn3.iconfinder.com/data/icons/faticons/32/grid-2-01-512.png',
                      width: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.network(
                      'https://www.freeiconspng.com/thumbs/list-icon/checklist-icon-checklist-icon-png-list-icon-7.png',
                      width: 25,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            ...moduleList.map((e) => CourseModule2(e)).toList()
            //CourseModule(moduleList[0]),
          ],
        ));
  }
}

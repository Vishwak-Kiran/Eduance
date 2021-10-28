import 'package:flutter/material.dart';
import 'package:eduance/constants/colors.dart';
import 'package:eduance/models/module.dart';

import '../../../youtube_player_screen.dart';

class CourseModule extends StatelessWidget {
  final Module module;
  CourseModule(this.module);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Row(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: module.iconBorder,
                              width: 2,
                            ),
                            color: module.iconBg,
                            shape: BoxShape.circle),
                        child: Icon(
                          module.icon,
                          size: 30,
                          color: module.iconColor,
                        )),
                    Expanded(
                        child: Column(
                      children: List.generate(
                          20,
                          (index) => Expanded(
                                child: Container(
                                  width: 2,
                                  color: index % 2 == 0
                                      ? Colors.transparent
                                      : module.iconBorder,
                                ),
                              )),
                    ))
                  ],
                ),
              )),
          Flexible(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: module.moduleBorder, width: 2),
                color: module.moduleBg,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        module.title,
                        style: TextStyle(
                            color: kFontLight, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.smart_display_outlined, color: kFontLight),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    module.desc,
                    style: TextStyle(
                        fontSize: 18,
                        color: kFont.withOpacity(0.7),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    child: Text('Play'),
                    style: ElevatedButton.styleFrom(
                        primary: kFontLight.withOpacity(1),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CustomYoutubePlayer(module.ki)));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildButton(IconData icon, String text) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: module.buttonColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: module.buttonColor,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
                color: module.buttonFont, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class CourseModule1 extends StatelessWidget {
  final Module1 module1;
  CourseModule1(this.module1);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Row(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: module1.iconBorder,
                              width: 2,
                            ),
                            color: module1.iconBg,
                            shape: BoxShape.circle),
                        child: Icon(
                          module1.icon,
                          size: 30,
                          color: module1.iconColor,
                        )),
                    Expanded(
                        child: Column(
                      children: List.generate(
                          20,
                          (index) => Expanded(
                                child: Container(
                                  width: 2,
                                  color: index % 2 == 0
                                      ? Colors.transparent
                                      : module1.iconBorder,
                                ),
                              )),
                    ))
                  ],
                ),
              )),
          Flexible(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: module1.module1Border, width: 2),
                color: module1.module1Bg,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        module1.title,
                        style: TextStyle(
                            color: kFontLight, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.more_horiz, color: kFontLight),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    module1.desc,
                    style: TextStyle(
                        fontSize: 18,
                        color: kFont.withOpacity(0.7),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    child: Text('Play'),
                    style: ElevatedButton.styleFrom(
                        primary: kFontLight.withOpacity(1),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CustomYoutubePlayer(module1.ki)));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildButton(IconData icon, String text) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: module1.buttonColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: module1.buttonColor,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
                color: module1.buttonFont, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class CourseModule2 extends StatelessWidget {
  final Module2 module2;
  CourseModule2(this.module2);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Row(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: module2.iconBorder,
                              width: 2,
                            ),
                            color: module2.iconBg,
                            shape: BoxShape.circle),
                        child: Icon(
                          module2.icon,
                          size: 30,
                          color: module2.iconColor,
                        )),
                    Expanded(
                        child: Column(
                      children: List.generate(
                          20,
                          (index) => Expanded(
                                child: Container(
                                  width: 2,
                                  color: index % 2 == 0
                                      ? Colors.transparent
                                      : module2.iconBorder,
                                ),
                              )),
                    ))
                  ],
                ),
              )),
          Flexible(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: module2.module1Border, width: 2),
                color: module2.module1Bg,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        module2.title,
                        style: TextStyle(
                            color: kFontLight, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.more_horiz, color: kFontLight),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    module2.desc,
                    style: TextStyle(
                        fontSize: 18,
                        color: kFont.withOpacity(0.7),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    child: Text('Play'),
                    style: ElevatedButton.styleFrom(
                        primary: kFontLight.withOpacity(1),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CustomYoutubePlayer(module2.ki)));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildButton(IconData icon, String text) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: module2.buttonColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: module2.buttonColor,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
                color: module2.buttonFont, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

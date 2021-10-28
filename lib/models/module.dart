import 'package:flutter/material.dart';
import 'package:eduance/constants/colors.dart';

class Module {
  Color iconBorder;
  Color iconBg;
  Color iconColor;
  IconData icon;
  String title;
  String desc;
  Color moduleBorder;
  Color moduleBg;
  Color buttonColor;
  Color buttonFont;
  String time;
  String lesson;
  String ki;

  Module(
    this.iconBorder,
    this.iconBg,
    this.iconColor,
    this.icon,
    this.time,
    this.desc,
    this.moduleBorder,
    this.moduleBg,
    this.buttonColor,
    this.buttonFont,
    this.title,
    this.lesson,
    this.ki,
  );

  static List<Module> generateModule() {
    return [
      Module(
          kAccent,
          kAccent,
          Colors.white,
          Icons.lock_outline_rounded,
          '1hr',
          'Dart Programming',
          kPrimaryLight,
          kPrimaryLight,
          kPrimary,
          Colors.black45,
          'Lesson 1',
          'Dart Basics',
          'https://www.youtube.com/watch?v=Ej_Pcr4uC2Q'),
      Module(
          kFontLight,
          Colors.white,
          kFontLight,
          Icons.lock_outline_rounded,
          '2hr',
          'Introduction to Flutter',
          kPrimaryLight,
          Colors.white,
          Colors.grey.withOpacity(.2),
          Colors.grey,
          'Lesson 2',
          'Widgets',
          'https://www.youtube.com/watch?v=x0uinJvhNxI'),
      Module(
          kFontLight,
          Colors.white,
          kFontLight,
          Icons.lock_outline_rounded,
          '1hr',
          'Flutter Animations',
          kPrimaryLight,
          Colors.white,
          Colors.grey.withOpacity(.2),
          Colors.grey,
          'Lesson 3',
          'UI Design',
          'https://www.youtube.com/watch?v=txLvvlooT20'),
      Module(
          kFontLight,
          Colors.white,
          kFontLight,
          Icons.lock_outline_rounded,
          '2hr',
          'Flutter Advanced',
          kPrimaryLight,
          Colors.white,
          Colors.grey.withOpacity(.2),
          Colors.grey,
          'Lesson 4',
          'Architecture',
          'https://www.youtube.com/watch?v=dc3B_mMrZ-Q'),
      Module(
          kFontLight,
          Colors.white,
          kFontLight,
          Icons.lock_outline_rounded,
          '2hr',
          'Flutter FireBase',
          kPrimaryLight,
          Colors.white,
          Colors.grey.withOpacity(.2),
          Colors.grey,
          'Lesson 5',
          'Database',
          'https://www.youtube.com/watch?v=fi2WkznwWbc&t=231s')
    ];
  }
}

class Module1 {
  Color iconBorder;
  Color iconBg;
  Color iconColor;
  IconData icon;
  String title;
  String desc;
  Color module1Border;
  Color module1Bg;
  Color buttonColor;
  Color buttonFont;
  String time;
  String lesson;
  String ki;

  Module1(
    this.iconBorder,
    this.iconBg,
    this.iconColor,
    this.icon,
    this.time,
    this.desc,
    this.module1Border,
    this.module1Bg,
    this.buttonColor,
    this.buttonFont,
    this.title,
    this.lesson,
    this.ki,
  );

  static List<Module1> generatemodule1() {
    return [
      Module1(
          kAccent,
          kAccent,
          Colors.white,
          Icons.lock_outline_rounded,
          '3hr',
          'HTML',
          kPrimaryLight,
          kPrimaryLight,
          kPrimary,
          Colors.black45,
          'Lesson 1',
          'HTML know-how',
          'https://www.youtube.com/watch?v=pQN-pnXPaVg'),
      Module1(
          kFontLight,
          Colors.white,
          kFontLight,
          Icons.lock_outline_rounded,
          '2h',
          'CSS',
          kPrimaryLight,
          Colors.white,
          Colors.grey.withOpacity(.2),
          Colors.grey,
          'Lesson 2',
          'CSS know-how',
          'https://www.youtube.com/watch?v=1Rs2ND1ryYc'),
      Module1(
          kFontLight,
          Colors.white,
          kFontLight,
          Icons.lock_outline_rounded,
          '4hr',
          'JavaScript',
          kPrimaryLight,
          Colors.white,
          Colors.grey.withOpacity(.2),
          Colors.grey,
          'Lesson 3',
          'Basics',
          'https://www.youtube.com/watch?v=PkZNo7MFNFg'),
      Module1(
          kFontLight,
          Colors.white,
          kFontLight,
          Icons.lock_outline_rounded,
          '1hr',
          'Frameworks',
          kPrimaryLight,
          Colors.white,
          Colors.grey.withOpacity(.2),
          Colors.grey,
          'Lesson 4',
          'Advanced',
          'https://www.youtube.com/watch?v=VfGW0Qiy2I0'),
    ];
  }
}

class Module2 {
  Color iconBorder;
  Color iconBg;
  Color iconColor;
  IconData icon;
  String title;
  String desc;
  Color module1Border;
  Color module1Bg;
  Color buttonColor;
  Color buttonFont;
  String time;
  String lesson;
  String ki;

  Module2(
    this.iconBorder,
    this.iconBg,
    this.iconColor,
    this.icon,
    this.time,
    this.desc,
    this.module1Border,
    this.module1Bg,
    this.buttonColor,
    this.buttonFont,
    this.title,
    this.lesson,
    this.ki,
  );

  static List<Module2> generatemodule2() {
    return [
      Module2(
          kAccent,
          kAccent,
          Colors.white,
          Icons.lock_outline_rounded,
          '2hr',
          'Basics',
          kPrimaryLight,
          kPrimaryLight,
          kPrimary,
          Colors.black45,
          'Lesson 1',
          'Java Basics',
          'https://www.youtube.com/watch?v=eIrMbAQSU34&t=5935s'),
      Module2(
          kFontLight,
          Colors.white,
          kFontLight,
          Icons.lock_outline_rounded,
          '2hr',
          'JDK',
          kPrimaryLight,
          Colors.white,
          Colors.grey.withOpacity(.2),
          Colors.grey,
          'Lesson 2',
          'Java Know-how',
          'https://www.youtube.com/watch?v=ntLJmHOJ0ME'),
      Module2(
          kFontLight,
          Colors.white,
          kFontLight,
          Icons.lock_outline_rounded,
          '3hr',
          'Java Frameworks',
          kPrimaryLight,
          Colors.white,
          Colors.grey.withOpacity(.2),
          Colors.grey,
          'Lesson 3',
          'Frameworks',
          'https://www.youtube.com/watch?v=rzA7UJ-hQn4'),
      Module2(
          kFontLight,
          Colors.white,
          kFontLight,
          Icons.lock_outline_rounded,
          '3hr',
          'Front End and Database',
          kPrimaryLight,
          Colors.white,
          Colors.grey.withOpacity(.2),
          Colors.grey,
          'Lesson 4',
          'Database',
          'https://www.youtube.com/watch?v=aGgWvwb5xUE'),
    ];
  }
}

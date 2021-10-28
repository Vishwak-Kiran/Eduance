// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:eduance/constants/colors.dart';
import 'package:eduance/models/course.dart';
import 'package:eduance/screens/detail/widget/detail.dart';

class CourseItem extends StatelessWidget {
  final Course course;
  // ignore: prefer_const_constructors_in_immutables
  CourseItem(this.course);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
              color: kPrimaryLight, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      course.imageUrl,
                      fit: BoxFit.fill,
                    )),
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              course.authorImg,
                              width: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              course.author,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              course.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kFont),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: kFontLight, shape: BoxShape.circle),
                            ),
                            const Text(
                              '10hr',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: kFontLight,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
        Positioned(
          bottom: 60,
          right: 20,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: kAccent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DetailPage(course)));
            },
            child: const Text('Start'),
          ),
        ),
      ],
    );
  }
}

class CourseItem1 extends StatelessWidget {
  final Course1 course1;
  // ignore: prefer_const_constructors_in_immutables
  CourseItem1(this.course1);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
              color: kPrimaryLight, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      course1.imageUrl,
                      fit: BoxFit.fill,
                    )),
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              course1.authorImg,
                              width: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              course1.author,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              course1.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kFont),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: kFontLight, shape: BoxShape.circle),
                            ),
                            const Text(
                              '14hr',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: kFontLight,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
        Positioned(
          bottom: 60,
          right: 20,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: kAccent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailPage1(course1)));
            },
            child: const Text('Start'),
          ),
        ),
      ],
    );
  }
}

class CourseItem2 extends StatelessWidget {
  final Course2 course2;
  // ignore: prefer_const_constructors_in_immutables
  CourseItem2(this.course2);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
              color: kPrimaryLight, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      course2.imageUrl,
                      fit: BoxFit.fill,
                    )),
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              course2.authorImg,
                              width: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              course2.author,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              course2.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kFont),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: kFontLight, shape: BoxShape.circle),
                            ),
                            const Text(
                              '12hr',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: kFontLight,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
        Positioned(
          bottom: 60,
          right: 20,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: kAccent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailPage2(course2)));
            },
            child: const Text('Start'),
          ),
        ),
      ],
    );
  }
}

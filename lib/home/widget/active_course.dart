import 'package:flutter/cupertino.dart';
import 'package:eduance/constants/colors.dart';
import 'package:eduance/screens/home/widget/category_title.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
  const ActiveCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryTitle('Currently Active', 'View All'),
        Container(
          margin: const EdgeInsets.all(25),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: kFontLight.withOpacity(0.1),
              border: Border.all(color: kFontLight.withOpacity(0.3), width: 1),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset('assets/images/image2.jpg',
                        height: 50, width: 60),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text('Symmetry Theory',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kFont)),
                      // ignore: prefer_const_constructors
                      Text('2 lessons left',
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: kFontLight))
                    ],
                  )
                ],
              ),
              CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 5.0,
                percent: 0.61,
                center: const Text(
                  '61%',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                progressColor: kAccent,
              )
            ],
          ),
        )
      ],
    );
  }
}

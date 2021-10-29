import 'package:flutter/material.dart';
import 'package:eduance/constants/colors.dart';
import 'package:eduance/models/course.dart';
import 'package:eduance/youtube_player_screen.dart';

import '../../../youtube_player_screen.dart';

class CustomAppBar extends StatelessWidget {
  final Course course;
  CustomAppBar(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Column(
          children: [
            Container(
                foregroundDecoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: Image.asset(
                  course.imageUrl,
                  fit: BoxFit.fitHeight,
                ),
                height: 300,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  //   border: Border.all(color: Colors.green, width: 2.0),
                )),
            Container(
              height: 20,
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          right: 40,
          child: Container(
            height: 50,
            width: 110,
            child: ElevatedButton(
              child: Text('Start Intro'),
              style: ElevatedButton.styleFrom(
                  primary: kAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CustomYoutubePlayer(
                            "https://www.youtube.com/watch?v=I9ceqw5Ny-4")));
              },
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top,
          left: 25,
          child: Container(
            padding: EdgeInsets.only(left: 5),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              iconSize: 20,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top,
          right: 25,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
              iconSize: 20,
              onPressed: () => Navigator.of(context),
            ),
          ),
        )
      ],
    ));
  }
}

class CustomAppBar1 extends StatelessWidget {
  final Course1 course1;
  CustomAppBar1(this.course1);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Column(
          children: [
            Container(
                foregroundDecoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: Image.asset(
                  course1.imageUrl,
                  fit: BoxFit.fitHeight,
                ),
                height: 300,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  //   border: Border.all(color: Colors.green, width: 2.0),
                )),
            Container(
              height: 20,
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          right: 40,
          child: Container(
            height: 50,
            width: 110,
            child: ElevatedButton(
              child: Text('Start Intro'),
              style: ElevatedButton.styleFrom(
                  primary: kAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CustomYoutubePlayer(
                            "https://www.youtube.com/watch?v=Lp_1vHxOQ0I")));
              },
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top,
          left: 25,
          child: Container(
            padding: EdgeInsets.only(left: 5),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              iconSize: 20,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top,
          right: 25,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
              iconSize: 20,
              onPressed: () => Navigator.of(context),
            ),
          ),
        )
      ],
    ));
  }
}

class CustomAppBar2 extends StatelessWidget {
  final Course2 course2;
  CustomAppBar2(this.course2);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Column(
          children: [
            Container(
                foregroundDecoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: Image.asset(
                  course2.imageUrl,
                  fit: BoxFit.fitHeight,
                ),
                height: 300,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  //   border: Border.all(color: Colors.green, width: 2.0),
                )),
            Container(
              height: 20,
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          right: 40,
          child: Container(
            height: 50,
            width: 110,
            child: ElevatedButton(
              child: Text('Start Intro'),
              style: ElevatedButton.styleFrom(
                  primary: kAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CustomYoutubePlayer(
                            "https://www.youtube.com/watch?v=Us6g8VrOHls")));
              },
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top,
          left: 25,
          child: Container(
            padding: EdgeInsets.only(left: 5),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              iconSize: 20,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top,
          right: 25,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
              iconSize: 20,
              onPressed: () => Navigator.of(context),
            ),
          ),
        )
      ],
    ));
  }
}

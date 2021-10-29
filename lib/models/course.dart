class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course(this.author, this.authorImg, this.title, this.imageUrl);

  static List<Course> generateCourses() {
    return [
      Course('channel#1', 'assets/icons/icon1.png', 'Flutter Developer',
          'assets/images/imagei3.jpg'),
      Course('channel#2', 'assets/icons/icon2.png', 'Android Developer',
          'assets/images/imagei4.jpg'),
      Course('channel#3', 'assets/icons/icon1.png', 'React Developer',
          'assets/images/image5.jpg'),
    ];
  }
}

class Course1 {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course1(this.author, this.authorImg, this.title, this.imageUrl);

  static List<Course1> generateCourses1() {
    return [
      Course1('channel#1', 'assets/icons/icon1.png', 'Front End Developer',
          'assets/images/image1.png'),
      Course1('channel#2', 'assets/icons/icon2.png', 'Back End Developer',
          'assets/images/image2.png'),
    ];
  }
}

class Course2 {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course2(this.author, this.authorImg, this.title, this.imageUrl);

  static List<Course2> generateCourses2() {
    return [
      Course2('channel#1', 'assets/icons/icon1.png', 'Java Developer',
          'assets/images/imagei6.jpg'),
      Course2('channel#2', 'assets/icons/icon2.png', 'Python Developer',
          'assets/images/imagei7.jpg'),
      Course2('channel#3', 'assets/icons/icon1.png', 'C Programmer',
          'assets/images/image8.png'),
    ];
  }
}

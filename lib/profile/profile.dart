import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:eduance/profile/page/profile_page.dart';
import 'package:eduance/profile/themes.dart';
import 'package:eduance/profile/utils/user_preferences.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeProvider.of(context),
          title: title,
          home: ProfilePage(),
        ),
      ),
    );
  }
}

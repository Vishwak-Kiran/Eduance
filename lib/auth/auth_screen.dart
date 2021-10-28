import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math';
import 'package:eduance/auth/constants.dart';
import 'package:eduance/auth/flutterfire.dart';
import 'package:eduance/auth/socal_buttons.dart';
import 'package:eduance/screens/home/home.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();
  bool _isShowSignUp = false;

  late AnimationController _animationController;
  late Animation<double> _animationTextRotate;

  void setUpAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: defaultDuration);

    _animationTextRotate =
        Tween<double>(begin: 0, end: 90).animate(_animationController);
  }

  void updateView() {
    setState(() {
      _isShowSignUp = !_isShowSignUp;
    });
    _isShowSignUp
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  void initState() {
    setUpAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: AnimatedBuilder(
            animation: _animationController,
            builder: (context, _) {
              return Stack(
                children: [
                  AnimatedPositioned(
                    duration: defaultDuration,
                    width: _size.width * 0.88,
                    height: _size.height,
                    left: _isShowSignUp ? -_size.width * 0.76 : 0,
                    child: Container(
                      color: login_bg,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.13),
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Spacer(),
                              TextFormField(
                                controller: _emailField,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: defaultPadding),
                                child: TextFormField(
                                  obscureText: true,
                                  controller: _passwordField,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Spacer(flex: 2),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: defaultDuration,
                    height: _size.height,
                    width: _size.width * 0.88,
                    left:
                        _isShowSignUp ? _size.width * 0.12 : _size.width * 0.88,
                    child: Container(
                      color: signup_bg,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.13),
                        child: Form(
                          child: Column(
                            children: [
                              Spacer(),
                              TextFormField(
                                controller: _emailField,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: defaultPadding),
                                child: TextFormField(
                                  controller: _passwordField,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                  ),
                                ),
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Confirm Password",
                                ),
                              ),
                              Spacer(flex: 2)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: defaultDuration,
                    top: _size.height * 0.1,
                    left: 0,
                    right: _isShowSignUp
                        ? -_size.width * 0.06
                        : _size.width * 0.06,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white60,
                      child: AnimatedSwitcher(
                        duration: defaultDuration,
                        child: _isShowSignUp
                            ? SvgPicture.asset(
                                "assets/icons/animation_logo.svg",
                                color: signup_bg,
                              )
                            : SvgPicture.asset(
                                'assets/icons/animation_logo.svg',
                                color: login_bg,
                              ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: defaultDuration,
                    width: _size.width,
                    bottom: _size.height * 0.1,
                    right: _isShowSignUp
                        ? -_size.width * 0.06
                        : _size.width * 0.06,
                    child: SocalButtns(),
                  ),
                  AnimatedPositioned(
                    duration: defaultDuration,
                    bottom: _isShowSignUp
                        ? _size.height / 2 - 80
                        : _size.height * 0.3,
                    left: _isShowSignUp ? 0 : _size.width * 0.44 - 80,
                    child: AnimatedDefaultTextStyle(
                      duration: defaultDuration,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: _isShowSignUp ? 20 : 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                      child: Transform.rotate(
                        angle: -_animationTextRotate.value * pi / 180,
                        alignment: Alignment.topLeft,
                        child: InkWell(
                          onTap: () async {
                            if (_isShowSignUp) {
                              updateView();
                            } else {
                              bool shouldNavigate = await signIn(
                                  _emailField.text, _passwordField.text);
                              if (shouldNavigate) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ),
                                );
                              }
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: defaultPadding * 0.75),
                            width: 160,
                            //color: Colors.red,
                            child: Text(
                              'Log In'.toUpperCase(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: defaultDuration,
                    bottom: !_isShowSignUp
                        ? _size.height / 2 - 80
                        : _size.height * 0.3,
                    right: _isShowSignUp ? _size.width * 0.44 - 80 : 0,
                    child: AnimatedDefaultTextStyle(
                      duration: defaultDuration,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: !_isShowSignUp ? 20 : 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                      child: Transform.rotate(
                        angle: (90 - _animationTextRotate.value) * pi / 180,
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () async {
                            if (_isShowSignUp) {
                              bool shouldNavigate = await register(
                                  _emailField.text, _passwordField.text);
                              if (shouldNavigate) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ),
                                );
                              }
                            } else {
                              updateView();
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: defaultPadding * 0.75),
                            width: 160,
                            //color: Colors.red,
                            child: Text(
                              'Sign Up'.toUpperCase(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              );
            }));
  }
}

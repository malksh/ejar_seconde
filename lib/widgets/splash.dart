import 'package:ejar_1/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
              "https://assets4.lottiefiles.com/packages/lf20_jmklnksf.json",
              controller: _controller, onLoaded: (compos) {
            _controller
              ..duration = compos.duration
              ..forward().then((value) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              });
          }),
        ],
      ),
    );
  }
}

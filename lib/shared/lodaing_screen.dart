import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:gdsc_project/Screens/splash_screen.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    navigateAfterCounter();
  }

  navigateAfterCounter() async {
    await Future.delayed(const Duration(seconds: 6));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const SplashScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: const FlareActor("assets/flrs/loadingCircles.flr",
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: "Loading",
            color: Colors.lightBlue),
      ),
    );
  }
}

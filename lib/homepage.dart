import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool toShow = false;
  @override
  void initState() {
    toShowTimeDelay();
    super.initState();
  }

  void toShowTimeDelay() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    setState(() {
      toShow = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          toShow
              ? Positioned(
                  top: 50,
                  left: 30,
                  child: LottieBuilder.asset("assets/crackers.json"),
                )
              : const SizedBox.shrink(),
          Positioned(
            top: 250,
            left: 25,
            child: LottieBuilder.asset(
              "assets/happy_new_year.json",
              height: 350,
            ),
          ),
        ],
      ),
    );
  }
}
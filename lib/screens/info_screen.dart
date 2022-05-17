import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            backgroundColor: Colors.grey[900],
            elevation: 0.0,
            foregroundColor: Colors.blue,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0, 0, 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Made By',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Mohamed Abdalla Mahdi',
                    style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Mohamedahmed',
                    style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

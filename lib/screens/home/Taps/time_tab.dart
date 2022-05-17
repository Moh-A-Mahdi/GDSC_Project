import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeTab extends StatefulWidget {
  const TimeTab({Key? key}) : super(key: key);

  @override
  State<TimeTab> createState() => _TimeTabState();
}

class _TimeTabState extends State<TimeTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SingleChildScrollView(
          child: Center(
            heightFactor: 3,
            child: StreamBuilder(
                stream: Stream.periodic(const Duration(seconds: 1)),
                builder: (context, snapshot) {
                  return Column(
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: DateFormat('hh').format(DateTime.now()),
                          style: const TextStyle(
                              fontSize: 60,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                          children: <TextSpan>[
                            TextSpan(
                                text: DateFormat(':mm:ss a')
                                    .format(DateTime.now()),
                                style: const TextStyle(
                                    fontSize: 50,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: DateFormat('yyyy/').format(DateTime.now()),
                          style: const TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          children: <TextSpan>[
                            TextSpan(
                                text: DateFormat('MM').format(DateTime.now()),
                                style: const TextStyle(
                                    fontSize: 35,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600)),
                            TextSpan(
                                text: DateFormat('/d').format(DateTime.now()),
                                style: const TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: DateFormat('MMMM ').format(DateTime.now()),
                          style: const TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          children: <TextSpan>[
                            TextSpan(
                                text: DateFormat('EEEE').format(DateTime.now()),
                                style: const TextStyle(
                                    fontSize: 35,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}

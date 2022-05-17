import 'package:flutter/material.dart';
import 'package:gdsc_project/screens/authenticate/authenticate.dart';
import '../data.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          children: [
            SizedBox(
              height: 550,
              width: double.infinity,
              child: PageView.builder(
                  onPageChanged: (value) {},
                  itemCount: listofvalues.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 25),
                      child: Card(
                        color: Colors.grey[850],
                        elevation: 6.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 250,
                              padding: const EdgeInsets.all(25),
                              decoration: const BoxDecoration(),
                              child: Image(
                                image: AssetImage(listofvalues[index].img),
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              height: 70,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(25),
                              child: Text(
                                listofvalues[index].qute,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Authenticate()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: Colors.grey[850],
                    minimumSize: const Size(100, 50),
                    elevation: 3.0),
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

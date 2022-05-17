import 'package:flutter/material.dart';
import 'package:gdsc_project/data.dart';
import 'package:url_launcher/url_launcher.dart';

class ZoneTab extends StatelessWidget {
  const ZoneTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: listofzones.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _launchURL();
            },
            child: Card(
              margin: const EdgeInsets.only(bottom: 5),
              color: Colors.grey[900],
              child: ListTile(
                contentPadding: const EdgeInsets.all(25),
                title: Text(
                  listofzones[index].name,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  '${listofzones[index].zone} ',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

_launchURL() async {
  final Uri _url =
      Uri.parse('https://www.accuweather.com/en/browse-locations/mea');
  if (await canLaunchUrl(_url)) {
    await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}

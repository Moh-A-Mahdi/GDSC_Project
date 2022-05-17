class SplashData {
  late String img;
  late String qute;
  SplashData({required this.img, required this.qute});
}

var listofvalues = [
  SplashData(
      img: 'assets/images/clock.png',
      qute: 'Shows current time and date in one place!'),
  SplashData(
      img: 'assets/images/Zones.png',
      qute: 'Shows different time zones!\nTap a zone for more!')
];

class CountryName {
  String name;
  String zone;
  CountryName({required this.name, required this.zone});
}

List listofzones = [
  CountryName(name: "Afghanistan", zone: 'UTC+04:30'),
  CountryName(name: "Albania", zone: 'UTC+01:00'),
  CountryName(name: "American Samoa (USA)", zone: 'UTC−11:00'),
  CountryName(name: "Andorra	", zone: 'UTC+01:00'),
  CountryName(name: "Sudan	", zone: 'UTC+02:00	'),
  CountryName(name: "United Kingdom", zone: 'UTC±00:00'),
  CountryName(name: "United Arab Emirates", zone: 'UTC+04:00'),
];

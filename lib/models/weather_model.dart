class Weather {
  final String cityName;
  final double tempereture;
  final String mainCondition;

  Weather({
    required this.cityName,
    required this.tempereture,
    required this.mainCondition,
  });

  factory Weather.formJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      tempereture: json['main']['temp'].toDouble(),
      mainCondition: json['weather'][0]['main'],
    );
  }
}

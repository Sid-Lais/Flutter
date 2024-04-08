class Weather {
  String name = '';
  String description = '';
  double temperature = 0;
  double preceived = 0;
  int pressure = 0;
  int humidity = 0;

  Weather(this.name, this.description, this.temperature, this.preceived,
      this.pressure, this.humidity);

  Weather.fromJson(Map<String, dynamic> weatherData) {
    name = weatherData['name'];
    description = weatherData['weather'][0]['description'] ?? '';
    temperature =
        (weatherData['main']['temp'] - 273.15) ?? 0; // temperature in celcius
    preceived = (weatherData['main']['feels_like'] - 273.15) ?? 0;
    pressure = weatherData['main']['pressure'] ?? 0;
    humidity = weatherData['main']['humidity'] ?? 0;
  }
}

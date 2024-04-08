import 'package:weather_app/model/http_helper.dart';
import 'package:weather_app/model/weather.dart';
import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  TextEditingController textController = TextEditingController();
  Weather result = Weather('', '', 0, 0, 0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Weather Screen'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    controller: textController,
                    decoration: InputDecoration(
                        hintText: 'Enter City Name',
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: getData,
                        )),
                  ),
                ),
                weatherRow('Place: ', result.name),
                weatherRow('Description: ', result.description),
                weatherRow(
                    'Temperature: ', result.temperature.toStringAsFixed(2)),
                weatherRow('Feels Like: ', result.preceived.toStringAsFixed(2)),
                weatherRow('Pressure: ', result.pressure.toStringAsFixed(2)),
                weatherRow('Humidity: ', result.humidity.toStringAsFixed(2)),
              ],
            )));
  }

  Future getData() async {
    HttpHelper httpHelper = HttpHelper();
    result = await httpHelper.getWeather(textController.text);
    setState(() {
      result;
    });
  }

  Widget weatherRow(String label, String value) {
    Widget row = Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Text(
                label,
                style:
                    TextStyle(fontSize: 20, color: Theme.of(context).hintColor),
              )),
          Expanded(
              flex: 4,
              child: Text(
                value,
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).primaryColor),
              )),
        ],
      ),
    );
    return row;
  }
}

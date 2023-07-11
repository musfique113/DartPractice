import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherPage(),
    );
  }
}

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  bool isLoading = true;
  bool isError = false;
  WeatherData? weatherData;

  @override
  void initState() {
    super.initState();
    fetchWeatherData();
  }

  Future<void> fetchWeatherData() async {
    try {
      

      // Get the user's location using a location plugin or API
      final latitude = 37.7749; // Replace with the user's latitude
      final longitude = -122.4194; // Replace with the user's longitude

      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        setState(() {
          weatherData = WeatherData.fromJson(jsonData);
          isLoading = false;
        });
      } else {
        setState(() {
          isError = true;
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        isError = true;
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple[700]!, Colors.purple[400]!],
          ),
        ),
        child: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : isError
              ? Text('Error fetching weather data')
              : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                weatherData!.location,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              CachedNetworkImage(
                imageUrl: weatherData!.weatherImage,
                placeholder: (context, url) =>
                    CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                    Icon(Icons.error),
                height: 100,
                width: 100,
              ),
              SizedBox(height: 16),
              Text(
                '${weatherData!.temperature}°C',
                style: TextStyle(
                  fontSize: 48,
                  fontFamily: 'CustomFont',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/up_arrow.svg',
                    width: 20,
                    height: 20,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '${weatherData!.maxTemperature}°C',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'CustomFont',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 16),
                  SvgPicture.asset(
                    'assets/icons/down_arrow.svg',
                    width: 20,
                    height: 20,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '${weatherData!.minTemperature}°C',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'CustomFont',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/clock.svg',
                    width: 20,
                    height: 20,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Updated: ${weatherData!.updatedTime}',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'CustomFont',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WeatherData {
  final String location;
  final String temperature;
  final String minTemperature;
  final String maxTemperature;
  final String weatherDescription;
  final String weatherImage;
  final String updatedTime;

  WeatherData({
    required this.location,
    required this.temperature,
    required this.minTemperature,
    required this.maxTemperature,
    required this.weatherDescription,
    required this.weatherImage,
    required this.updatedTime,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    final weather = json['weather'][0];
    final iconCode = weather['icon'];
    final temperature = (json['main']['temp'] - 273.15).toStringAsFixed(1);
    final minTemperature = (json['main']['temp_min'] - 273.15).toStringAsFixed(1);
    final maxTemperature = (json['main']['temp_max'] - 273.15).toStringAsFixed(1);
    final updatedTime = DateTime.now().toString();


    return WeatherData(
      location: json['name'],
      temperature: temperature,
      minTemperature: minTemperature,
      maxTemperature: maxTemperature,
      weatherDescription: weather['main'],
      weatherImage:
      'https://openweathermap.org/img/w/$iconCode.png',
      updatedTime: updatedTime,
    );
  }
}

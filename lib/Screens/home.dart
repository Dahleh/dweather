import 'package:dweather/Models/weather.dart';
import 'package:dweather/Network/app_client.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class HomePage extends StatefulWidget {
  static const String routName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.

    return await Geolocator.getCurrentPosition();
  }

  Future<Weather> getCurrent() async {
    Position position = await _determinePosition();
    AppClient client = AppClient();
    return await client
        .getCurrentLocation("${position.latitude},${position.longitude}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text("Home"),
      ),
      body: FutureBuilder(
        future: getCurrent(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Stack(
              children: [
                // Background
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue.shade200, Colors.blue.shade50],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Top Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${DateTime.now().hour}:${DateTime.now().minute}",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                "Doha",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.refresh,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Today ${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                      ),
                      // const Spacer(),
                      // Weather Info
                      Center(
                        child: Column(
                          children: [
                            Text(
                              "${snapshot.data!.current!.tempC!.round()}",
                              style: const TextStyle(
                                fontSize: 100,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "${snapshot.data!.current!.condition!.text}",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Icon(
                                  Icons.wb_sunny,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "It's Getting Cold",
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // const Spacer(),
                      // Weather Details
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildWeatherInfo(
                              "Wind", "${snapshot.data!.current!.windKph}"),
                          const SizedBox(width: 10),
                          _buildWeatherInfo("Humidity",
                              "${snapshot.data!.current!.humidity}%"),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // Forecast Section
                      SizedBox(
                        height: 140,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              snapshot.data!.forecast!.forecastday!.length,
                          itemBuilder: (context, index) {
                            return _buildForecastCard(
                                snapshot
                                    .data!.forecast!.forecastday![index].date!
                                    .substring(5),
                                "${snapshot.data!.forecast!.forecastday![index].day!.avgtempC}°",
                                Icons.wb_sunny,
                                "${snapshot.data!.forecast!.forecastday![index].day!.condition!.text}");
                          },
                          // children: [
                          //   _buildForecastCard(
                          //       "Today", "10°", Icons.wb_sunny, "Clear"),
                          //   _buildForecastCard(
                          //       "Tomorrow", "12°", Icons.cloud, "Cloudy"),
                          //   _buildForecastCard(
                          //       "Wed", "15°", Icons.wb_sunny, "Clear"),
                          //   _buildForecastCard(
                          //       "Thu", "9°", Icons.umbrella, "Rain"),
                          // ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Map Section
                      // ClipRRect(
                      //   borderRadius: BorderRadius.circular(16),
                      //   child: Stack(
                      //     children: [
                      //       Image.network(
                      //         'https://via.placeholder.com/400x200', // Replace with your image
                      //         height: 150,
                      //         width: double.infinity,
                      //         fit: BoxFit.cover,
                      //       ),
                      //       Positioned(
                      //         bottom: 10,
                      //         left: 10,
                      //         child: ElevatedButton.icon(
                      //           onPressed: () {},
                      //           icon: const Icon(Icons.add_location),
                      //           label: const Text("Add Location"),
                      //           style: ElevatedButton.styleFrom(
                      //             backgroundColor: Colors.black54,
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget _buildWeatherInfo(String title, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white70, fontSize: 16),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildForecastCard(
      String day, String temp, IconData icon, String desc) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            day,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(height: 5),
          Icon(icon, color: Colors.white, size: 28),
          const SizedBox(height: 5),
          Text(
            temp,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            desc,
            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
 // _determinePosition() async {
 //    bool serviceEnabled;
 //    LocationPermission permission;
 //
 //    // Test if location services are enabled.
 //    serviceEnabled = await Geolocator.isLocationServiceEnabled();
 //    if (!serviceEnabled) {
 //      // Location services are not enabled don't continue
 //      // accessing the position and request users of the
 //      // App to enable the location services.
 //      return Future.error('Location services are disabled.');
 //    }
 //
 //    permission = await Geolocator.checkPermission();
 //    if (permission == LocationPermission.denied) {
 //      permission = await Geolocator.requestPermission();
 //      if (permission == LocationPermission.denied) {
 //        // Permissions are denied, next time you could try
 //        // requesting permissions again (this is also where
 //        // Android's shouldShowRequestPermissionRationale
 //        // returned true. According to Android guidelines
 //        // your App should show an explanatory UI now.
 //        return Future.error('Location permissions are denied');
 //      }
 //    }
 //
 //    if (permission == LocationPermission.deniedForever) {
 //      // Permissions are denied forever, handle appropriately.
 //      return Future.error(
 //          'Location permissions are permanently denied, we cannot request permissions.');
 //    }
 //
 //    // When we reach here, permissions are granted and we can
 //    // continue accessing the position of the device.
 //     await _incrementCounter();
 //  }

  // void _incrementCounter() async {
  //
  //   bool serviceEnabled;
  //   LocationPermission permission;
  //
  //   // Test if location services are enabled.
  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     // Location services are not enabled don't continue
  //     // accessing the position and request users of the
  //     // App to enable the location services.
  //     return Future.error('Location services are disabled.');
  //   }
  //
  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       // Permissions are denied, next time you could try
  //       // requesting permissions again (this is also where
  //       // Android's shouldShowRequestPermissionRationale
  //       // returned true. According to Android guidelines
  //       // your App should show an explanatory UI now.
  //       return Future.error('Location permissions are denied');
  //     }
  //   }
  //
  //   if (permission == LocationPermission.deniedForever) {
  //     // Permissions are denied forever, handle appropriately.
  //     return Future.error(
  //         'Location permissions are permanently denied, we cannot request permissions.');
  //   }
  //
  //   try {
  //     // get current geolocation and push to db for on event.
  //     var event = await Geolocator.getCurrentPosition(
  //         desiredAccuracy: LocationAccuracy.bestForNavigation,
  //         timeLimit: Duration(minutes: 3)
  //     );
  //
  //     print("Event actual ${event.toJson()}");
  //
  //   } catch (ex, s) {
  //     var event = await Geolocator.getLastKnownPosition();
  //
  //     print("Event throw ${event?.toJson()}");
  //
  //     print("Exception${ex.toString()}");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // _incrementCounter();
          setState(() {

          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

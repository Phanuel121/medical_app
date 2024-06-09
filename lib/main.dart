import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as service;
import 'package:medical_app/pages/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  service.SystemChrome.setPreferredOrientations([service.DeviceOrientation.portraitUp]);
  service.SystemChrome.setEnabledSystemUIMode(service.SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

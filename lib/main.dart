import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as service;
import 'package:get/route_manager.dart';
import 'package:medical_app/pages/navigation_pages.dart';
import 'package:provider/provider.dart';

import 'service/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  service.SystemChrome.setPreferredOrientations([service.DeviceOrientation.portraitUp]);
  service.SystemChrome.setEnabledSystemUIMode(service.SystemUiMode.immersiveSticky);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<StateManager>(
          create: (context) => StateManager(),
        ),
      ], 
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Medical App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NavigationPages(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:original_seeker/data/services/database_helper.dart';
import 'package:original_seeker/pages/home_page.dart';
import 'package:original_seeker/provider/app_data.dart';
import 'package:provider/provider.dart';
import 'theme/util.dart';
import 'theme/theme.dart';
import 'dart:async';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await DatabaseHelper().initializeDatabase();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Roboto", "Roboto Slab");
    MaterialTheme theme = MaterialTheme(textTheme);
    return ChangeNotifierProvider<AppData>(
      create: (context) => AppData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Original Seeker',
        theme: brightness == Brightness.light ? theme.light() : theme.dark(),
        home: const MyHomePage(title: 'Original Seeker'),
      ),
    );
  }
}

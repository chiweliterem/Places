import 'package:flutter/material.dart';
import 'package:places/screens/home.dart';
import 'package:places/view_model/navigation_view_model.dart';
import 'package:provider/provider.dart';

import 'app_theme/theming.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NavigationViewModel>(
          create: (_) => NavigationViewModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Places',
        theme: getLightThemeData(),
        home: const Home(appName: 'Places'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learn_provider_with_scatter/providers/counter_provider.dart';
import 'package:learn_provider_with_scatter/providers/shopping_card.dart';
import 'package:learn_provider_with_scatter/screens/second_screen.dart';
import 'package:learn_provider_with_scatter/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
        MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => Counter()),
            ChangeNotifierProvider(create: (_) => ShoppingCard()),
          ],
        child: const MyApp(),
        )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}
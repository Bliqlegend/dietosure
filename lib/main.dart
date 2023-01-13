import 'package:flutter/material.dart';
import 'login_page.dart';
import 'homepage.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
        routes: {
          '/login': (context) => const LoginPage(),
          '/screen1': (context) => const HomePage(),
        }));

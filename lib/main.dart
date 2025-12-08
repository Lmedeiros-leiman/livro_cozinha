import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:livro_cozinha/app.dart';

void main() {
  final getIt = GetIt.instance;

  // Specify a concrete type instead of Object for registration.
  // Object is too generic for GetIt; use a specific type.
  getIt.registerSingletonAsync<MyService>(() async {
    await Future.delayed(const Duration(seconds: 6));
    return MyService();
  });

  getIt.allReady().then((onValue) {
    runApp(const MyApp());
  });
}

// Example service class for demonstration purposes.
class MyService {}

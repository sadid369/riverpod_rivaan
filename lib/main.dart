import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_rivaan/home_screen.dart';
import 'package:riverpod_rivaan/user.dart';

// final nameProvider = Provider<String>((ref) => 'Sadid');
// final nameProvider = StateProvider<String?>((ref) {
//   return null;
// });

final userProvider = StateNotifierProvider<UserNotifier, User>((ref) {
  return UserNotifier(const User(name: '', age: 0));
});
void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

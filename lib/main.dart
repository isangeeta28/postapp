import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testapp/provider/post_provider.dart';
import 'package:testapp/views/post_tile_screen.dart';

void main() {
  runApp(
      const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => PostProvider(),
      child: MaterialApp(
          title: 'Posts App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            useMaterial3: true,
          ),
           home: PostListScreen()
      ),
    );
  }
}

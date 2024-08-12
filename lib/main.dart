import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: PageView.builder(
              itemCount: imageBackground.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageBackground[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List imageBackground = [
  "https://images.pexels.com/photos/3533228/pexels-photo-3533228.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/3714435/pexels-photo-3714435.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/3616936/pexels-photo-3616936.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/3262909/pexels-photo-3262909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  'https://images.pexels.com/photos/3035298/pexels-photo-3035298.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/3555937/pexels-photo-3555937.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/3284696/pexels-photo-3284696.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
];

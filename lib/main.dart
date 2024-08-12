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
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Container(
                    height: 2,
                    color: const Color.fromARGB(131, 255, 255, 255),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(imageBackground[index]),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "@username.2024",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "22h",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(width: 140),
                        const Icon(Icons.more_vert,
                            color: Colors.white, size: 28),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 15),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                            height: 45,
                            child: const Text(
                              "Send Message",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.favorite_outline_outlined,
                            color: Colors.white, size: 30),
                        const SizedBox(width: 10),
                        const Icon(Icons.send_outlined,
                            color: Colors.white, size: 30),
                      ],
                    ),
                  ),
                ],
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

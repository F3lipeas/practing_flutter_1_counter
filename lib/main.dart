import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  int count2 = 0;

  void incrementPessoa() {
    setState(() {
      count++;
    });
    print(count);
  }

  void decrementPessoa() {
    setState(() {
      count--;
    });
    print(count);
  }

  void incrementAnimal() {
    setState(() {
      count2++;
    });
    print(count2);
  }

  void decrementAnimal() {
    setState(() {
      count2--;
    });
    print(count2);
  }

  bool get isEmpty => count == 0;

  bool get isFull => count == 20;

  bool get isEmpty2 => count2 == 0;

  bool get isFull2 => count2 == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/img.png"),
          fit: BoxFit.cover,
        )),


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Pessoas",
              style: TextStyle(
                fontSize: 30,
                color: Colors.yellowAccent,
                shadows: <Shadow>[
                  Shadow(
                    color: Colors.black,
                    offset: Offset(5.0, 2.0),
                    blurRadius: 0.2,
                  )
                ],
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              isFull ? "Lotado!" : "Pode Entrar!",
              style: const TextStyle(
                fontSize: 30,
                color: Colors.yellowAccent,
                fontWeight: FontWeight.w700,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(5.0, 2.0),
                    blurRadius: 2.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35),
              child: Text(
                count.toString(),
                style: TextStyle(
                    fontSize: 50,
                    color: isFull ? Colors.red : Colors.yellowAccent,
                    shadows: const <Shadow>[
                      Shadow(
                        offset: Offset(5.0, 2.0),
                        blurRadius: 2.0,
                        color: Colors.black,
                      )
                    ]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: isEmpty ? null : decrementPessoa,
                  style: TextButton.styleFrom(
                      backgroundColor: isEmpty
                          ? Colors.white.withOpacity(0.2)
                          : Colors.white,
                      fixedSize: Size(100, 50),
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                  child: Text(
                    "Saiu",
                    style: TextStyle(
                      fontSize: 20,
                      color: isEmpty ? Colors.red.withOpacity(0.3) : Colors.red,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ), // Widget vazio invisível.
                TextButton(
                  onPressed: isFull ? null : incrementPessoa,
                  style: TextButton.styleFrom(
                      fixedSize: Size(100, 50),
                      backgroundColor:
                          isFull ? Colors.white.withOpacity(0.2) : Colors.white,
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                  child: Text(
                    "Entrou",
                    style: TextStyle(
                      fontSize: 20,
                      color: isFull ? Colors.red.withOpacity(0.3) : Colors.red,
                    ),
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            const Text(
              "Animais",
              style: TextStyle(
                fontSize: 30,
                color: Colors.yellowAccent,
                shadows: <Shadow>[
                  Shadow(
                    color: Colors.black,
                    offset: Offset(5.0, 2.0),
                    blurRadius: 0.2,
                  )
                ],
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              "Pode Entrar!",
              style: TextStyle(
                fontSize: 30,
                color: Colors.yellowAccent,
                shadows: <Shadow>[
                  Shadow(
                    color: Colors.black,
                    offset: Offset(5.0, 2.0),
                    blurRadius: 0.2,
                  )
                ],
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                count2.toString(),
                style: TextStyle(
                    fontSize: 50,
                    color: isFull2 ? Colors.red : Colors.yellowAccent,
                    shadows: <Shadow>[
                      Shadow(
                          color: Colors.black,
                          offset: Offset(5.0, 2.0),
                          blurRadius: 0.2),
                    ]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: isEmpty2? null : decrementAnimal,
                  style: TextButton.styleFrom(
                      fixedSize: Size(100, 50),
                      backgroundColor: isEmpty2 ? Colors.white.withOpacity(0.2): Colors.white,
                      primary: Colors.yellowAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: Text(
                    "Saiu",
                    style: TextStyle(fontSize: 20, color: isEmpty2 ? Colors.black.withOpacity(0.2): Colors.black),
                  ),
                ),
                SizedBox(width: 20),
                TextButton(
                  onPressed: isFull2? null : incrementAnimal,
                  style: TextButton.styleFrom(
                      fixedSize: Size(100, 50),
                      backgroundColor: isFull2 ? Colors.white.withOpacity(0.2): Colors.white,
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: Text(
                    "Entrou",
                    style: TextStyle(fontSize: 20, color: isFull2 ? Colors.black.withOpacity(0.2): Colors.black),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

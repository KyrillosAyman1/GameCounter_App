import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballCounter());
}

class BasketballCounter extends StatefulWidget {
  const BasketballCounter({super.key});

  @override
  State<BasketballCounter> createState() => _BasketballCounterState();
}

class _BasketballCounterState extends State<BasketballCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text(
            "Points Counter",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),

        body: Column(
          spacing: 40,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  spacing: 10,
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 98, 144),
                      ),
                    ),
                    Text(
                      "$teamAPoints",
                      style: TextStyle(
                        fontSize: 95,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 98, 144),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        minimumSize: Size(170, 45),
                        shape: RoundedSuperellipseBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      child: Text(
                        "add 1 point",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        minimumSize: Size(170, 45),
                        shape: RoundedSuperellipseBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      child: Text(
                        "add 2 point",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        minimumSize: Size(170, 45),
                        shape: RoundedSuperellipseBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      child: Text(
                        "add 3 point",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        minimumSize: Size(120, 45),
                        shape: RoundedSuperellipseBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints--;
                        });
                      },
                      child: Text(
                        "remove 1 point",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        minimumSize: Size(130, 45),
                        shape: RoundedSuperellipseBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints -= 2;
                        });
                      },
                      child: Text(
                        "remove 2 point",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 480,
                  child: VerticalDivider(
                    color: Colors.lightBlue,
                    thickness: 1.1,
                  ),
                ),

                Column(
                  spacing: 10,
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 98, 144),
                      ),
                    ),
                    Text(
                      "$teamBPoints",
                      style: TextStyle(
                        fontSize: 95,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 98, 144),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        minimumSize: Size(170, 45),
                        shape: RoundedSuperellipseBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: Text(
                        "add 1 point",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        minimumSize: Size(170, 45),
                        shape: RoundedSuperellipseBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      child: Text(
                        "add 2 point",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        minimumSize: Size(170, 45),
                        shape: RoundedSuperellipseBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      child: Text(
                        "add 3 point",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        minimumSize: Size(130, 45),
                        shape: RoundedSuperellipseBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints--;
                        });
                      },
                      child: Text(
                        "remove 1 point",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        minimumSize: Size(130, 45),
                        shape: RoundedSuperellipseBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints -= 2;
                        });
                      },
                      child: Text(
                        "remove 2 point",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
                teamAPoints = 0;
                teamBPoints = 0;
              },
              child: Text(
                "Reset",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                minimumSize: Size(130, 50),
                shape: RoundedSuperellipseBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

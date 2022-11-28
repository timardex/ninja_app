import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: NinjaCard()));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLvele = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLvele += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/ninja-1.png"),
                radius: 40,
              ),
            ),
            const Divider(
              height: 60,
              color: Colors.grey,
            ),
            const Text(
              "Name",
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Chun-Li",
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Current Ninja Level",
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "$ninjaLvele",
              style: const TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "chun.li@ninja.co.uk",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

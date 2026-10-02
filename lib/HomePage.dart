import 'package:flutter/material.dart';
import 'CyclePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool hasPeriod = false;

  final TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyCycle"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Screenshot 2026-09-24 at 13.06.33.png",
              width: 300,
            ),

            const SizedBox(height: 20),

            const Text(
              "Welcome to MyCycle!",
              style: TextStyle(
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 20),

            TextFormField(
              controller: noteController,
              decoration: const InputDecoration(
                labelText: "Write a note",
                border: OutlineInputBorder(),
              ),
            ),

            SwitchListTile(
              title: const Text("I have my period"),
              value: hasPeriod,
              onChanged: (value) {
                setState(() {
                  hasPeriod = value;
                });
              },
            ),

            ElevatedButton(
              onPressed: (){
              Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Cyclepage(
                    note: noteController.text,
                    hasPeriod: hasPeriod,
                  ),
              ),
              );

            },
            child: const Text("Save"),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
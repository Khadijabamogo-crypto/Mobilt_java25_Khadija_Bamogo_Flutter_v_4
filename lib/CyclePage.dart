import 'package:flutter/material.dart';

class Cyclepage extends StatelessWidget{
  final String note;
  final bool hasPeriod;

  const Cyclepage({
    super.key,
    required this.note,
    required this.hasPeriod,

});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cycle"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Your cycle information",
              style: TextStyle(
                fontSize: 24,
              ),
            ),

            Text(
              hasPeriod ? "Period: Yes" : "Period: No",
            ),

            const SizedBox(height: 20),

            Text(
             "Note: $note",
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
            },
              child: const Text("Back"),
            ),
          ],
        ),
      ) ,
    );
  }
}
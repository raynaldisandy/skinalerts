import 'package:flutter/material.dart';

class ClickForCheckPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            color: const Color(0xFFF1F8E8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.black),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/Icons/logo1.png',
                    height: 100,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Ayo kenali gejala dini kanker kulit.\nPeriksakan gejala kanker kulit Anda sekarang!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'LeagueSpartan',
                      fontSize: 18,
                      color: Color(0xFF5C715E),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Action for the button
                    },
                    child: Text(
                      'Click For Check',
                      style: TextStyle(
                        fontFamily: 'LeagueSpartan',
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Color(0xFFF2F9F1),
                      backgroundColor: Color.fromARGB(255, 115, 143, 118),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

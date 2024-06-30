import 'package:flutter/material.dart';
import 'quisoner.dart';

class ClickForCheckPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFF2F9F1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.black),
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 350, 
                child: Scrollbar(
                  thickness: 10, 
                  trackVisibility: true,
                  radius: const Radius.circular(3),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
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
                          const SizedBox(height: 10), // Reduce the height of the SizedBox
                          ElevatedButton(
                            onPressed: () {
                              // Navigate to QuestionerPage when button is clicked
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Quisonerpage()),
                              );
                            },
                            child: Text(
                              'Click For Check',
                              style: TextStyle(
                                fontFamily: 'LeagueSpartan',
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Color(0xFFF2F9F1),
                              backgroundColor: Color(0xFF5C715E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Reduce the vertical padding
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
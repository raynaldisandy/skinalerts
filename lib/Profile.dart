import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F9F1),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F9F1),
        elevation: 0,
        toolbarHeight: 0, // Hide the app bar
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40), // Add some space from the top
              Text(
                'Profile',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5C715E),
                  fontFamily: 'LeagueSpartan',
                ),
              ),
              SizedBox(height: 10),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/Icons/logo2.png'), // Add your profile picture asset here
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.edit, color: Color(0xFF5C715E), size: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ProfileTextField(
                label: 'Full Name',
              ),
              ProfileTextField(
                label: 'Phone Number',
              ),
              ProfileTextField(
                label: 'Email',
              ),
              ProfileTextField(
                label: 'Date Of Birth',
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Update',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFF2F9F1),
                    fontFamily: 'LeagueSpartan',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFFF2F9F1),
                  backgroundColor: Color(0xFF5C715E),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 40), // Add some space at the bottom
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileTextField extends StatelessWidget {
  final String label;

  ProfileTextField({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF5C715E),
              fontFamily: 'LeagueSpartan',
            ),
          ),
          SizedBox(height: 8),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFF5C715E),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              hintStyle: TextStyle(
                fontSize: 16,
                color: Color(0xFFF2F9F1),
                fontFamily: 'LeagueSpartan',
              ),
            ),
              style: TextStyle(
              fontSize: 16,
              color: Color(0xFFF2F9F1),
              fontFamily: 'LeagueSpartan',
            ),
          ),
        ],
      ),
    );
  }
}
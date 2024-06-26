import 'package:flutter/material.dart'; 

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> { 
  TextEditingController _dobController = TextEditingController();

  @override
  void dispose() {
    _dobController.dispose();
    super.dispose();
  }

 Future<void> _selectDate(BuildContext context) async {
  DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: DateTime.now(),
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData(
          colorScheme: ColorScheme.light(
            primary: Color(0xFF5C715E), 
            onPrimary: Color(0xFFF2F9F1), 
          ),
        ),
        child: child!,
      );
    },
  );
  if (picked != null && picked != DateTime.now()) {
    setState(() {
      _dobController.text = "${picked.toLocal()}".split(' ')[0];
    });
  }
}

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
                    backgroundColor: Color(0xFF5C715E),
                    child: Icon(Icons.edit, color: Color(0xFFF2F9F1), size: 20),
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
                controller: _dobController,
                onTap: () => _selectDate(context),
              ),
              ProfileDropdownField(
                label: 'Sex',
                items: ['Men', 'Women'],
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
  final TextEditingController? controller;
  final VoidCallback? onTap;

  ProfileTextField({required this.label, this.controller, this.onTap});

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
            controller: controller,
            onTap: onTap,
            readOnly: onTap != null,
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
                color: Color(0xFF5C715E),
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

class ProfileDropdownField extends StatefulWidget {
  final String label;
  final List<String> items;

  ProfileDropdownField({required this.label, required this.items});

  @override
  _ProfileDropdownFieldState createState() => _ProfileDropdownFieldState();
}

class _ProfileDropdownFieldState extends State<ProfileDropdownField> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF5C715E),
              fontFamily: 'LeagueSpartan',
            ),
          ),
          SizedBox(height: 8),
          DropdownButtonFormField<String>(
            hint: Text(
              'Select',
            style: TextStyle(
                fontSize: 16,
                color: Color(0xFFF2F9F1),
                fontFamily: 'LeagueSpartan',
              ),),
              icon: Icon(Icons.arrow_drop_down_sharp,color:Color(0xFFF2F9F1),size: 25,),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFF5C715E), 
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),   
            ),
            dropdownColor: Color(0xFF5C715E),
            value: selectedValue,
            onChanged: (newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
            items: widget.items.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFF2F9F1),
                    fontFamily: 'LeagueSpartan',
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

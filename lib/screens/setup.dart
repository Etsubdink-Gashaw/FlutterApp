// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Setup extends StatefulWidget {
  const Setup({super.key});
  @override
  State<Setup> createState() => _SetupState();
}

class _SetupState extends State<Setup> {
  final _nameController = TextEditingController();
  String? selectedValue = 'Option 2';
  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9F3E7),
      appBar: AppBar(
        //title: const Text('Setup Profile'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        //Text('Welcome to Trackivore! Please set up your profile to get started.', style: TextStyle(fontSize: 18)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Profile Setup',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.3,
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 400,
            width: double.infinity,
            //color: Colors.white,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xFFFAFFFB),
              boxShadow: [],
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Profile Name',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                TextField(
                  controller: _nameController,
                  maxLength: 15,
                  decoration: InputDecoration(
                    counterText: '',
                    labelText: 'Profile Name',
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xFFCEECD1),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xFFA6EBAF),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Age Group',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                DropdownButtonFormField<String>(
                  style: TextStyle(
                    fontSize: 20,
                  ), // Text style of the selected item
                  dropdownColor: Color(0xFFEEFFF0),
                  elevation: 8,
                  value: selectedValue,
                  decoration: InputDecoration(
                    fillColor: Color(0xFFEEFFF0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xFFCEECD1),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xFFA6EBAF),
                        width: 2,
                      ),
                    ),
                  ),
                  hint: Text(
                    'Select an option',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  items: <String>['Option 1', 'Option 2', 'Option 3']
                      .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      })
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  icon: Icon(Icons.arrow_drop_down, size: 30),
                  iconSize: 30,
                ),
                Text(
                  'Allergies ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Dietary Restrictions',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

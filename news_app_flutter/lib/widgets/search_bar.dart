import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(15.0),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        hintText: ' Search News...',
        hintStyle: TextStyle(
          color: Colors.grey[300],
        ),
        fillColor: Colors.white24,
        filled: true,
      ),
    );
  }
}

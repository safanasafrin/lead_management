import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration:InputDecoration(
        hintText: 'Search...',
        helperStyle: TextStyle(
          color: Colors.grey.withOpacity(0.5),
        ),
        prefixIcon: Icon(Icons.search_rounded),
      ),
    );
  }
}

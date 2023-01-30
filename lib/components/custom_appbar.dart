import 'package:flutter/material.dart';
import 'package:lead_management/components/search_field.dart';
import 'package:lead_management/screens/notifications.dart';
import 'package:lead_management/screens/profile.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(child: SearchField()),
          SizedBox(
            width: 30,
          ),
          Notifications(),
          SizedBox(
            width: 30,
          ),
          Profile(),

        ],
      ),
    );
  }
}

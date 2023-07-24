import 'package:flutter/material.dart';
import 'package:skrill/common/helper.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 154, 154, 218),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Image.asset("assets/6.png"),
            title: Text(
              "Summary",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Helper.primary,
              ),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 154, 154, 218),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                "There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. "),
          )
        ],
      ),
    );
  }
}

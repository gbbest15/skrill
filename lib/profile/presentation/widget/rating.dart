import 'package:flutter/material.dart';
import 'package:skrill/common/helper.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 154, 154, 218),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Image.asset("assets/Star.png"),
            title: Text(
              "Ratings and Reviews (8)",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Helper.primary,
              ),
            ),
            trailing: const Text(
              "See more",
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 154, 154, 218),
          ),
          ListTile(
            leading: Image.asset("assets/Ellipse 85.png"),
            title: const Text(
              "Allen Daniels",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                ...List.generate(
                  5,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: Image.asset("assets/Star 6.png"),
                  ),
                ),
                const SizedBox(width: 5),
                const Text("5.0"),
              ],
            ),
            trailing: const Text("17 Hours Ago"),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
                "There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. "),
          ),
          const SizedBox(height: 10),
          const Divider(
            color: Color.fromARGB(255, 154, 154, 218),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff0044C0)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Write a Review',
                  style: TextStyle(
                    color: Color(0xff0044C0),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

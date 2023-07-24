import 'package:flutter/material.dart';

import '../../../common/helper.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 154, 154, 218),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Image.asset("assets/Work.png"),
            title: Text(
              "Work Experience",
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 196, 196, 236),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "S",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Helper.primary),
                  )),
                ),
                const SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CEO/ Founder",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Helper.primary,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Samdom Fashion House",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const Text("June 2018- Present")
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 196, 196, 236),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "M",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Helper.primary),
                  )),
                ),
                const SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tailoring Apprentice",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Helper.primary,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Maydan Tailoring House",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const Text("June 2011- May 2018")
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

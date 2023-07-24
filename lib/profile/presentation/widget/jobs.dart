import 'package:flutter/material.dart';
import 'package:skrill/common/helper.dart';

class Jobs extends StatelessWidget {
  const Jobs({super.key});

  @override
  Widget build(BuildContext context) {
    final listjob = [
      "assets/Mask group.png",
      "assets/Mask group (1).png",
      "assets/Mask group (2).png",
    ];

    final jobsName = ["Ankara Gown", "3- Piece Suit", "Jumpsuit Dress"];
    return Container(
      height: 230,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 154, 154, 218),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListTile(
            leading: SizedBox(
              child: Image.asset("assets/Document.png"),
            ),
            title: Text(
              "Job Portfolio",
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
          Wrap(
            spacing: 15,
            runSpacing: 15,
            children: List.generate(
              3,
              (index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 110,
                      width: 110,
                      child: Image.asset(listjob[index]),
                    ),
                    Text(jobsName[index])
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

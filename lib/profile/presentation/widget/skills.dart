import 'package:flutter/material.dart';
import 'package:skrill/common/helper.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    final listSkills = ["Fitting", "Sewing", "Measurement Taking", "Amendment"];
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
            leading: SizedBox(
              child: Image.asset("assets/Chart.png"),
            ),
            title: Text(
              "Skills",
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
              listSkills.length,
              (index) => Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Helper.primary),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Text(listSkills[index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

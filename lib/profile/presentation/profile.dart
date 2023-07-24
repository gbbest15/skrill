import 'package:flutter/material.dart';
import 'package:skrill/common/helper.dart';
import 'package:skrill/common/string_helper.dart';
import 'package:skrill/profile/presentation/widget/jobs.dart';
import 'package:skrill/profile/presentation/widget/rating.dart';
import 'package:skrill/profile/presentation/widget/skills.dart';
import 'package:skrill/profile/presentation/widget/summary.dart';
import 'package:skrill/profile/presentation/widget/work.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          StringHelper.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Helper.primary,
            fontSize: 25,
          ),
        ),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        const CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("assets/Ellipse.png"),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 10,
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      StringHelper.name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      StringHelper.discrip,
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          5,
                          (index) => Padding(
                            padding: const EdgeInsets.only(right: 2.0),
                            child: Image.asset("assets/Star 6.png"),
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "5.0",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/Location.png"),
                            const SizedBox(width: 5),
                            const Text("Lagos, Nigeria.")
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("assets/Call.png"),
                            const SizedBox(width: 5),
                            const Text("+234 813 970 3721"),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/Message 35.png"),
                            const SizedBox(width: 5),
                            const Text("samdee@gmail.com")
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "Experience",
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 5),
                                child: Text("Expert"),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: const LinearGradient(
                        colors: <Color>[Color(0xff012466), Color(0xff0044C0)]),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/Send 2.png"),
                      const SizedBox(width: 5),
                      const Text(
                        "Send Message",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Divider(
                color: Color.fromARGB(255, 154, 154, 218),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: "Join Date: ",
                  style: TextStyle(
                    color: Helper.primary,
                    fontWeight: FontWeight.bold,
                  ),
                  children: const [
                    TextSpan(
                      text: "19th August, 2021",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: "Completed Jobs: ",
                  style: TextStyle(
                    color: Helper.primary,
                    fontWeight: FontWeight.bold,
                  ),
                  children: const [
                    TextSpan(
                      text: "300",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: " Last Seen: ",
                  style: TextStyle(
                    color: Helper.primary,
                    fontWeight: FontWeight.bold,
                  ),
                  children: const [
                    TextSpan(
                      text: "4 Hours Ago",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Divider(
                color: Color.fromARGB(255, 154, 154, 218),
              ),
              const SizedBox(height: 20),
              const Summary(),
              const SizedBox(height: 20),
              const Work(),
              const SizedBox(height: 20),
              const Skills(),
              const SizedBox(height: 20),
              const Jobs(),
              const SizedBox(height: 20),
              const Rating(),
            ],
          ),
        ),
      ),
    );
  }
}

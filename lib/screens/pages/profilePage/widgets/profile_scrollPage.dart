
import 'package:flutter/material.dart';

Widget profileScrollPage() {
  return SingleChildScrollView(
    child: Stack(
      children: [
        // SizedBox(height: 20,),
        Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(35)),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Marina Volkova",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black45),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Image.asset(
                          "assets/profile_icons/ic_official.png",
                          scale: 1.8,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  const [
                      Text(
                        "ID: 233256",
                        style: TextStyle(fontSize: 16, color: Colors.green),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "0 cym",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Montserrat",
                      ),
                    ),
                  ),
                  const Text(
                    "Лицевой счет",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                    ),
                  ),
                  ListTile(
                    title:  const Text(
                      "Личная информация",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    leading: Image.asset(
                        "assets/profile_icons/ic_person_box_in.png"),
                    trailing:  const Icon(
                      Icons.chevron_right,
                      size: 28,
                    ),
                  ),
                  const  Divider(
                    indent: 18,
                    endIndent: 18,
                  ),
                  ListTile(
                    title: const  Text(
                      "Потратить бонусы",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    leading:
                        Image.asset("assets/profile_icons/ic_gift.png"),
                    trailing:  const Icon(
                      Icons.chevron_right,
                      size: 28,
                    ),
                  ),
                  const Divider(
                    indent: 18,
                    endIndent: 18,
                  ),
                  ListTile(
                    title: const  Text(
                      "Частно задаваемые вопросы",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    leading: Image.asset("assets/profile_icons/ic_faq.png"),
                    trailing: const  Icon(
                      Icons.chevron_right,
                      size: 28,
                    ),
                  ),
                  const Divider(
                    indent: 18,
                    endIndent: 18,
                  ),
                  ListTile(
                    title: const  Text(
                      "О приложении",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    leading:
                        Image.asset("assets/profile_icons/ic_about.png"),
                    trailing: const  Icon(
                      Icons.chevron_right,
                      size: 28,
                    ),
                  ),
                  const Divider(
                    indent: 18,
                    endIndent: 18,
                  ),
                  ListTile(
                    title:  const Text(
                      "Личная информация",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    leading:
                        Image.asset("assets/profile_icons/ic_exit.png"),
                    trailing:  const Icon(
                      Icons.chevron_right,
                      size: 28,
                    ),
                  ),
SizedBox(height: 20,)                ],
              ),
            ),
          ],
        ),
        Column(
          children: const [
            SizedBox(
              height: 100,
            ),
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/profileTab_image.png"),
                  radius: 48,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

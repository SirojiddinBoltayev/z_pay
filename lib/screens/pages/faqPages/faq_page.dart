import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/faqPages/widget/faq_appbar.dart';

import '../profilePage/profile_page.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  State<FaqPage> createState() => _FaqPageState();
}

var isPressed = 2;

class _FaqPageState extends State<FaqPage> {
  final _ItemsBool item = _ItemsBool(
    name1: false,
    name2: false,
    name3: false,
    name4: false,
    name5: false,
    name6: false,
    name7: false,
  );

  @override
  Widget build(BuildContext context) {
    var navigator = Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext) => ProfilePage()));

    String icon_up = "assets/images/faq/ic_tile_trailing.png";
    String icon_down = "assets/images/faq/ic_tile_trailing_down.png";
    double _letterSpacing = 1.1;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: FaqAppBar(
          context,
        ),
      ),
      body: RawScrollbar(
        thumbVisibility: true,
        trackColor: Colors.grey,
        thumbColor: Colors.indigo,
        radius: Radius.circular(20),
        thickness: 10,
        child: Scrollbar(
          thickness: 0,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "регистрация в сервисе   ZPAY".toUpperCase(),

                    // strutStyle: StrutStyle,
                    style: TextStyle(
                        letterSpacing: 0.9,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat"),
                  ),
                ),

                //item.name1
                Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.white70,
                  ),
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      setState(() {
                        item.name1 = !item.name1;
                      });

                      // isPressed = !isPressed;

                      // print(isPressed);
                    },
                    trailing: InkWell(
                        child: !item.name1
                            ? Image.asset(icon_up)
                            : Image.asset(icon_down)),
                    title: Text(
                      "Как начать пользоваться сервисом?",
                      style: TextStyle(
                          letterSpacing: _letterSpacing,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: "Montserrat"),
                    ),
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(22),
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 15, right: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffEAE9EE),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1.Зарегистрировать номер в системе ZPAY.",
                              style: TextStyle(
                                  fontSize: 18, letterSpacing: _letterSpacing),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              "2.Пройти верификацию для получения лимита",
                              style: TextStyle(
                                  fontSize: 18, letterSpacing: _letterSpacing),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.7,
                  height: 20,
                  indent: 15,
                  endIndent: 15,
                ),
                //item.name2 Item name2 dan boshlab info sini to'ldirish kerak birinchi bilan bir xil bo'lgan
                Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.white70,
                  ),
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      setState(() {
                        item.name2 = !item.name2;
                      });

                      // isPressed = !isPressed;

                      // print(isPressed);
                    },
                    trailing: InkWell(
                        child: !item.name2
                            ? Image.asset(icon_up)
                            : Image.asset(icon_down)),
                    maintainState: true,
                    title: Text(
                      "Как пройти регистрацию?",
                      style: TextStyle(
                          letterSpacing: _letterSpacing,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: "Montserrat"),
                    ),
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(22),
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 15, right: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffEAE9EE),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1.Зарегистрировать номер в системе ZPAY.",
                              style: TextStyle(
                                  fontSize: 18, letterSpacing: _letterSpacing),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              "2.Пройти верификацию для получения лимита",
                              style: TextStyle(
                                  fontSize: 18, letterSpacing: _letterSpacing),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.7,
                  height: 20,
                  indent: 15,
                  endIndent: 15,
                ),
//item.name3
                Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.white70,
                  ),
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      setState(() {
                        item.name3 = !item.name3;
                      });

                      // isPressed = !isPressed;

                      // print(isPressed);
                    },
                    trailing: InkWell(
                        child: !item.name3
                            ? Image.asset(icon_up)
                            : Image.asset(icon_down)),
                    maintainState: true,
                    title: Text(
                      "Что, если получили “ОТКАЗ” в верификации?",
                      style: TextStyle(
                          letterSpacing: _letterSpacing,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: "Montserrat"),
                    ),
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(22),
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 15, right: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffEAE9EE),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1.Зарегистрировать номер в системе ZPAY.",
                              style: TextStyle(
                                  fontSize: 18, letterSpacing: _letterSpacing),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              "2.Пройти верификацию для получения лимита",
                              style: TextStyle(
                                  fontSize: 18, letterSpacing: _letterSpacing),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.7,
                  height: 20,
                  indent: 15,
                  endIndent: 15,
                ),
//item.name4
                Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.white70,
                  ),
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      setState(() {
                        item.name4 = !item.name4;
                      });
                    },
                    trailing: InkWell(
                        child: !item.name4
                            ? Image.asset(icon_up)
                            : Image.asset(icon_down)),
                    maintainState: true,
                    title: Text(
                      "Можно ли пройти регистрацию через другую карту",
                      style: TextStyle(
                          letterSpacing: _letterSpacing,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: "Montserrat"),
                    ),
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(22),
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 15, right: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffEAE9EE),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1.Зарегистрировать номер в системе ZPAY.",
                              style: TextStyle(
                                  fontSize: 18, letterSpacing: _letterSpacing),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              "2.Пройти верификацию для получения лимита",
                              style: TextStyle(
                                  fontSize: 18, letterSpacing: _letterSpacing),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.7,
                  height: 20,
                  indent: 15,
                  endIndent: 15,
                ),
//item.name5
                Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.white70,
                  ),
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      setState(() {
                        item.name5 = !item.name5;
                      });
                    },
                    trailing: InkWell(
                        child: !item.name5
                            ? Image.asset(icon_up)
                            : Image.asset(icon_down)),
                    maintainState: true,
                    title: Text(
                      "Можно ли пройти повторную регистрацию, если ранее было отказано?",
                      style: TextStyle(
                          letterSpacing: _letterSpacing,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: "Montserrat"),
                    ),
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(22),
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 15, right: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffEAE9EE),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1.Зарегистрировать номер в системе ZPAY.",
                              style: TextStyle(
                                  fontSize: 18, letterSpacing: _letterSpacing),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              "2.Пройти верификацию для получения лимита",
                              style: TextStyle(
                                  fontSize: 18, letterSpacing: _letterSpacing),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.7,
                  height: 20,
                  indent: 15,
                  endIndent: 15,
                ),
//item.name6
                Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.white70,
                  ),
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      setState(() {
                        item.name6 = !item.name6;
                      });
                    },
                    trailing: InkWell(
                        child: !item.name6
                            ? Image.asset(icon_up)
                            : Image.asset(icon_down)),
                    maintainState: true,
                    title: Text(
                      "Какую карту нужно прявязать к сервису?",
                      style: TextStyle(
                          letterSpacing: _letterSpacing,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: "Montserrat"),
                    ),
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(22),
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 15, right: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffEAE9EE),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1.Зарегистрировать номер в системе ZPAY.",
                              style: TextStyle(
                                  fontSize: 18, letterSpacing: _letterSpacing),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              "2.Пройти верификацию для получения лимита",
                              style: TextStyle(
                                  fontSize: 18, letterSpacing: _letterSpacing),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.7,
                  height: 20,
                  indent: 15,
                  endIndent: 15,
                ),
//item.name7

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Что ТАКОЕ ZPAY".toUpperCase(),
                    // strutStyle: StrutStyle,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat"),
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.white70,
                  ),
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      setState(() {
                        item.name7 = !item.name7;
                      });
                    },
                    trailing: InkWell(
                        child: !item.name7
                            ? Image.asset(icon_up)
                            : Image.asset(icon_down)),
                    maintainState: true,
                    title: Text(
                      "Кто мы?",
                      style: TextStyle(
                          letterSpacing: _letterSpacing,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: "Montserrat"),
                    ),
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(22),
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 15, right: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffEAE9EE),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1.Зарегистрировать номер в системе ZPAY.",
                              style: TextStyle(
                                  fontSize: 18, letterSpacing: _letterSpacing),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              "2.Пройти верификацию для получения лимита",
                              style: TextStyle(
                                  fontSize: 18, letterSpacing: _letterSpacing),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.7,
                  height: 20,
                  indent: 15,
                  endIndent: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ItemsBool {
  bool name1;
  bool name2;
  bool name3;
  bool name4;
  bool name5;
  bool name6;
  bool name7;

  _ItemsBool(
      {required this.name1,
      required this.name2,
      required this.name3,
      required this.name4,
      required this.name5,
      required this.name6,
      required this.name7});
}

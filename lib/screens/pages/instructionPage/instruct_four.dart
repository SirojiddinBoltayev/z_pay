import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/registrationPage/login.dart';

class InstructFour extends StatelessWidget {
  const InstructFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 32),
                child: Text(
                  "Пропустить",
                  textAlign: TextAlign.center,
                  maxLines: 20,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xff3554D1),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 48,
          ),
          Stack(
            children: [
              Center(
                child: Container(
                  height: 576,
                  width: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage(
                          'assets/images/instruction/device.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: 548,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: ExactAssetImage(
                              'assets/images/instruction/screen4.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [
                      0.1,
                      0.8,
                      0.7,
                      0.99,
                    ],
                    colors: [
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white10
                    ],
                  ),
                ),
                margin: EdgeInsets.only(left: 0, right: 0, top: 300),
                padding: EdgeInsets.only(top: 100),
                child: Expanded(
                  child: Column(children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Просматривайте и управляйте\nсвоими покупками!",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color(0xff12154C),
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.4),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Просматривайте свои прошлые и текущие\nдоговора, и платежи. Управляйте своими\nданными в едином приложении",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Color(
                          0xff878B9A,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 330,
                            height: 50,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xff427CF8),
                                    Color(0xff1A3FC7),
                                  ]),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Color.fromRGBO(
                                            0, 0, 0, 0.57), //shadow for button
                                        blurRadius: 5) //blur radius of shadow
                                  ]),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  onSurface: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: ((context) => LoginPage())));
                                },
                                child: Text(
                                  "Пройти регистрацию",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ]),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

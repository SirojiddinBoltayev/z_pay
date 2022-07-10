import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/paymentsPages/mobile_pay_number.dart';
import 'package:z_pay/screens/pages/paymentsPages/widget/payments_appbar.dart';

class MobilePayDetails extends StatefulWidget {
  String imageUrl;

  MobilePayDetails({Key? key, required this.imageUrl}) : super(key: key);

  @override
  State<MobilePayDetails> createState() => _StateMobilePayDetails(imageUrl);
}

class _StateMobilePayDetails extends State<MobilePayDetails> {
  late TextEditingController _titleController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _titleController = new TextEditingController();
  }

  bool number = false;
  bool money = false;

  String imageUrl;

  _StateMobilePayDetails(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    var backRoute = MobilePaymentPage(context);
    String appBarName = "Мобильная связь";
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: PaymentsAppBar(context, appBarName, backRoute),
      ),
      body:
          // SingleChildScrollView(
          //   child:
          SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset(
                    imageUrl,
                    scale: 1.5,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(),
            ),

            // SizedBox(
            //   height: 170,
            SingleChildScrollView(
              child: Stack(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Column(
                    key: _formKey,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                          bottom: 10,
                        ),
                        child: Text(
                          "Номер  телефона",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 5),
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              onChanged: (value) {
                                setState(() {
                                  if (value.length == 12) {
                                    number = true;
                                  } else if (value.length >= 0 ||
                                      value.length > 12) {
                                    value = "";
                                    number = false;
                                  }
                                });
                              },
                              validator: (value) {
                                if (value!.length == 0)
                                  return "Bu joyni to'ldirmadingiz!";
                              },
                              decoration: InputDecoration(
                                fillColor: Colors.grey,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 2.0,
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 20, bottom: 10, top: 20),
                        child: Text(
                          "Сумма платежа",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 5),
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          child: TextFormField(
                              validator: (value) {
                                if (value!.length == 0)
                                  return "Bu joyni to'ldirmadingiz!";
                              },
                              onChanged: (value) {
                                setState(() {
                                  if (value.length >= 3) {
                                    money = true;
                                  } else if (value.length <= 4 ||
                                      value.length > 10) {
                                    value = "";
                                    money = false;
                                  }
                                });
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                fillColor: Colors.grey,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 2.0,
                                  ),
                                ),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ), // ),

            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,

              onTap: () {
                setState(() {
                  if(number == true && money == true){
                    // Page route
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext)=> "Buyerga ko'rsating"));
                  }
                });
                final isValid = _formKey.currentState!.validate();
                _formKey.currentState!.save();
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: number == true && money == true
                          ? Colors.grey
                          : Colors.transparent,
                      blurRadius: 15,
                      offset: Offset(2, 8), // Shadow position
                    ),
                  ],
                  borderRadius: BorderRadius.circular(25),
                  color: number == true && money == true
                      ? Colors.indigoAccent
                      : Colors.grey,
                ),
                child: Center(child: Text("Оплатить")),
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
          ],
          // ),

          // ],
        ),
      ),
      // ),
    );
  }
}

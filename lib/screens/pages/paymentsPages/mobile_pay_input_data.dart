import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/PaymentsPages/first_payment_page.dart';
import 'package:z_pay/screens/pages/paymentsPages/widget/payment_page_button.dart';
import 'package:z_pay/screens/pages/paymentsPages/widget/payments_appbar.dart';

Widget MobilePaymentPage(
  context,
) {
  var backRoute = PaymentHomePage();
  String appBarName = "Моб. связь";
  return Scaffold(
    appBar: PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: PaymentsAppBar(context, appBarName, backRoute),
    ),
    body: SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 22, top: 44),
              child: Text(
                "Выберите компанию",
                style: TextStyle(fontSize: 28, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                PaymentButton("assets/images/payments/ic_beeline.png"),
                SizedBox(
                  width: 15,
                ),
                PaymentButton("assets/images/payments/ic_ucell.png"),
                SizedBox(
                  width: 15,
                ),
                PaymentButton("assets/images/payments/ic_mobiuz.png"),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                PaymentButton("assets/images/payments/ic_humans.png"),
                SizedBox(
                  width: 15,
                ),
                PaymentButton("assets/images/payments/ic_perfectum.png"),
                SizedBox(
                  width: 15,
                ),
                PaymentButton("assets/images/payments/ic_uzmobile.png"),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

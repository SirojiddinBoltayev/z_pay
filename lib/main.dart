import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/myIDpage/my_id.dart';
import 'package:z_pay/screens/pages/myIDpage/my_id_one.dart';
import 'package:z_pay/screens/pages/myIDpage/my_id_two.dart';
import 'package:z_pay/screens/pages/registrationPage/login.dart';
import 'package:z_pay/screens/pages/splashPage/splash1.dart';
import 'package:z_pay/viewModel/main_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ViewModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyIdTwoPage(),
    );
  }
}

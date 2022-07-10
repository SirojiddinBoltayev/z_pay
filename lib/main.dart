import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:z_pay/screens/pages/PaymentsPages/first_payment_page.dart';
// import 'package:z_pay/screens/pages/faqPages/faq_page.dart';
// import 'package:z_pay/screens/pages/myIDpage/my_id_two.dart';
import 'package:z_pay/viewModel/main_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
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
      home: PaymentHomePage(),
    );
  }
}

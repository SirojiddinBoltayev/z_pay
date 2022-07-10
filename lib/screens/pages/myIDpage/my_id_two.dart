import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:z_pay/viewModel/main_provider.dart';
import 'package:provider/provider.dart';

class MyIdTwoPage extends StatefulWidget {
  const MyIdTwoPage({Key? key}) : super(key: key);

  @override
  State<MyIdTwoPage> createState() => _MyIdTwoPageState();
}

class _MyIdTwoPageState extends State<MyIdTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularCountDownTimer(
          duration: 10,
          initialDuration: 0,
          controller: CountDownController(),
          width: 280,
          height: 280,
          ringColor: context
              .watch<ViewModel>()
              .downTime
              ? Color(0xffEB5757)
              : Color(0xffF5F5F5),
          fillColor: Color(0xff1A3FC7),
          backgroundGradient:
          LinearGradient(colors: [Color.fromARGB(255, 100, 100, 100), Color
              .fromARGB(255, 174, 172, 172)
          ], begin: Alignment.topRight, end: Alignment.bottomLeft, ),
          strokeWidth: 5.0,
          strokeCap: StrokeCap.round,
          textStyle: TextStyle(
            fontSize: 62.0,
            color: Color(0xff878B9A),
            fontWeight: FontWeight.w600,
          ),
          textFormat: CountdownTextFormat.MM_SS,
          isReverse: true,
          isReverseAnimation: true,
          isTimerTextShown: true,
          autoStart: true,
          onStart: () {
            debugPrint('Countdown Started');
          },
          onComplete: () {
            setState(() {
              context.read<ViewModel>().circleDownTimeComplete();
            });
          },
          onChange: (String timeStamp) {
            debugPrint('Countdown Changed $timeStamp');
          },
        ),
      ),
    );
  }
}

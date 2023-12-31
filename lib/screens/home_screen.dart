import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ConfettiController _confettiController = ConfettiController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: CountdownTimer(
            endTime: DateTime(2024, 01, 01, 00, 00, 00).millisecondsSinceEpoch,
            textStyle: const TextStyle(
              fontSize: 40,
              color: Colors.tealAccent,
              fontWeight: FontWeight.bold,
            ),
            endWidget: ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              child: const Text(
                "Happy New Year!",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.redAccent,
                    fontFamily: 'UVF-SlimTony'),
              ),
            ),
            onEnd: () => _confettiController.play(),
          ),
        ),
      ),
    );
  }
}

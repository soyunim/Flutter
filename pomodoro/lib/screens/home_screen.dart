import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int nowSeconds = 900;
  int totalSeconds = 900;
  bool isRunning = false;
  bool isWaitingTime = false;
  int totalRound = 0;
  int totalGoal = 0;
  late Timer timer;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        if (!isWaitingTime) {
          totalRound = totalRound + 1;
        } else {
          isWaitingTime = false;
        }
        if (totalRound == 4) {
          totalGoal = totalGoal + 1;
          totalRound = 0;
          totalSeconds = 1500;
          isWaitingTime = true;
          isRunning = false;
          onStartPressed();
        } else {
          totalSeconds = nowSeconds;
          isRunning = false;
        }
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void onResetPressed() {
    if (isRunning) {
      DoNothingAction();
    } else {
      timer.cancel();
      setState(() {
        isRunning = false;
        totalSeconds = nowSeconds;
      });
    }
  }

  void onChange15Pressed() {
    if (isRunning == true) {
      DoNothingAction();
    } else {
      setState(() {
        totalSeconds = 900;
        nowSeconds = 900;
      });
    }
  }

  void onChange20Pressed() {
    if (isRunning == true) {
      DoNothingAction();
    } else {
      setState(() {
        totalSeconds = 1200;
        nowSeconds = 1200;
      });
    }
  }

  void onChange25Pressed() {
    if (isRunning == true) {
      DoNothingAction();
    } else {
      setState(() {
        totalSeconds = 1500;
        nowSeconds = 1500;
      });
    }
  }

  void onChange30Pressed() {
    if (isRunning == true) {
      DoNothingAction();
    } else {
      setState(() {
        totalSeconds = 1800;
        nowSeconds = 1800;
      });
    }
  }

  void onChange35Pressed() {
    if (isRunning == true) {
      DoNothingAction();
    } else {
      setState(() {
        totalSeconds = 2100;
        nowSeconds = 2100;
      });
    }
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'POMODOROS',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    format(totalSeconds),
                    style: TextStyle(
                      color: Theme.of(context).cardColor,
                      fontSize: 90,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: nowSeconds == 900
                            ? const MaterialStatePropertyAll(Color(0xFFFBECEB))
                            : const MaterialStatePropertyAll(Color(0xFFe74d3e)),
                      ),
                      onPressed: onChange15Pressed,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 5,
                        ),
                        child: Text(
                          '15',
                          style: TextStyle(
                            fontSize: 30,
                            color: nowSeconds == 900
                                ? const Color(0xFFe74d3e)
                                : const Color(0xFFFBECEB),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: nowSeconds == 1200
                            ? const MaterialStatePropertyAll(Color(0xFFFBECEB))
                            : const MaterialStatePropertyAll(Color(0xFFe74d3e)),
                      ),
                      onPressed: onChange20Pressed,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 5,
                        ),
                        child: Text(
                          '20',
                          style: TextStyle(
                            fontSize: 30,
                            color: nowSeconds == 1200
                                ? const Color(0xFFe74d3e)
                                : const Color(0xFFFBECEB),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: nowSeconds == 1500
                            ? const MaterialStatePropertyAll(Color(0xFFFBECEB))
                            : const MaterialStatePropertyAll(Color(0xFFe74d3e)),
                      ),
                      onPressed: onChange25Pressed,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 5,
                        ),
                        child: Text(
                          '25',
                          style: TextStyle(
                            fontSize: 30,
                            color: nowSeconds == 1500
                                ? const Color(0xFFe74d3e)
                                : const Color(0xFFFBECEB),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: nowSeconds == 1800
                            ? const MaterialStatePropertyAll(Color(0xFFFBECEB))
                            : const MaterialStatePropertyAll(Color(0xFFe74d3e)),
                      ),
                      onPressed: onChange30Pressed,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 5,
                        ),
                        child: Text(
                          '30',
                          style: TextStyle(
                            fontSize: 30,
                            color: nowSeconds == 1800
                                ? const Color(0xFFe74d3e)
                                : const Color(0xFFFBECEB),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: nowSeconds == 2100
                            ? const MaterialStatePropertyAll(Color(0xFFFBECEB))
                            : const MaterialStatePropertyAll(Color(0xFFe74d3e)),
                      ),
                      onPressed: onChange35Pressed,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 5,
                        ),
                        child: Text(
                          '35',
                          style: TextStyle(
                            fontSize: 30,
                            color: nowSeconds == 2100
                                ? const Color(0xFFe74d3e)
                                : const Color(0xFFFBECEB),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isWaitingTime
                      ? Text(
                          '$totalGoal Goal!',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.w900,
                          ),
                        )
                      : IconButton(
                          iconSize: 100,
                          color: Theme.of(context).cardColor,
                          onPressed:
                              isRunning ? onPausePressed : onStartPressed,
                          icon: Icon(isRunning
                              ? Icons.pause_circle_outline_rounded
                              : Icons.play_arrow_rounded),
                        ),
                  isWaitingTime
                      ? const SizedBox(
                          height: 0,
                        )
                      : IconButton(
                          iconSize: 30,
                          color: Theme.of(context).cardColor,
                          onPressed: onResetPressed,
                          icon: const Icon(Icons.refresh),
                        ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 90,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '$totalRound/4',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'ROUND',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '$totalGoal/12',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'GOAL',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

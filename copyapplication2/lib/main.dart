import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'MONDAY 16',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'TODAY',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                child: const Row(),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 200,
                    width: 410,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    margin: const EdgeInsets.only(top: 10),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 60,
                            child: Column(
                              children: [
                                Text(
                                  '11',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '30',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '|',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '12',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '20',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height: 150,
                              width: 310,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'DESIGN',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 55,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'MEETING',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 55,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'ALEX',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text('HELENA'),
                                      Text('NANA'),
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 200,
                    width: 410,
                    decoration: BoxDecoration(
                      color: Colors.purple.shade200,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    margin: const EdgeInsets.only(top: 10),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 60,
                            child: Column(
                              children: [
                                Text(
                                  '12',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '35',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '|',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '14',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '10',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height: 150,
                              width: 310,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'DAILY',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 55,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'PROJECT',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 55,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'ME',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text('RECHARD'),
                                      Text('CIRY'),
                                      Text('+4'),
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 200,
                    width: 410,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    margin: const EdgeInsets.only(top: 10),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 60,
                            child: Column(
                              children: [
                                Text(
                                  '15',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '00',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '|',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '16',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '30',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height: 150,
                              width: 310,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'WEEKLY',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 55,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'PLANNING',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 55,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'DEN',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text('NANA'),
                                      Text('MARK'),
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

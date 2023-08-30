import 'package:copyapplication/widgets/button.dart';
import 'package:copyapplication/widgets/currency_card.dart';
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
        //Color.fromAGRB(255,1,1,1)
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          //EdgeInsets.all(..)
          //EdgeInsets.only(right left ...),
          //EdgeInsets.symmetric(horizontal:30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '\$5 194 481',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: "Transfer",
                      bgColor: Color(0xFFF2B33A),
                      textColor: Colors.black),
                  Button(
                      text: "Request",
                      bgColor: Color(0xFF1f2123),
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CurrencyCard(
                currency: "Euro",
                money: "6 428",
                world: "EUR",
                icon: Icons.euro,
                isInverted: false,
              ),
              const CurrencyCard(
                currency: "Dollar",
                money: "55 622",
                world: "USD",
                icon: Icons.monetization_on_outlined,
                isInverted: true,
              ),
              const CurrencyCard(
                currency: "Rupee",
                money: "28 981",
                world: "INR",
                icon: Icons.currency_rupee,
                isInverted: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

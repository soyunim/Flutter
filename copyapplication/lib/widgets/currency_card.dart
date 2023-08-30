import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String currency;
  final String money;
  final String world;
  final IconData icon;
  final bool isInverted;

  final _blackColor = const Color(0xFF1f2123);

  const CurrencyCard({
    super.key,
    required this.currency,
    required this.money,
    required this.world,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : _blackColor,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currency,
                  style: TextStyle(
                    color: isInverted ? _blackColor : Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      money,
                      style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      world,
                      style: TextStyle(
                        color: (isInverted ? _blackColor : Colors.white)
                            .withOpacity(0.8),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-15, 12),
                child: Icon(
                  icon,
                  color: isInverted ? _blackColor : Colors.white,
                  size: 90,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

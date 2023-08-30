import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String currency;
  final String money;
  final String world;
  final Color bgColor;
  final Color textColor;
  final IconData icon;

  const CurrencyCard({
    super.key,
    required this.currency,
    required this.money,
    required this.world,
    required this.bgColor,
    required this.textColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(30),
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
                    color: textColor,
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
                        color: textColor,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      world,
                      style: TextStyle(
                        color: textColor.withOpacity(0.8),
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
                  color: textColor,
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

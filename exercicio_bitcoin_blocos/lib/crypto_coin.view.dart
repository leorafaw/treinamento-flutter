import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptoCoinView extends StatelessWidget {
  Color backgroundColor;
  String name;
  String abbreviation;
  String value;
  String raise;

  CryptoCoinView({
    required this.backgroundColor,
    required this.name,
    required this.abbreviation,
    required this.value,
    required this.raise,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      margin: const EdgeInsets.only(bottom: 13),
      height: 69,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0x30FFFFFF),
                borderRadius: BorderRadius.circular(50)),
            height: 40,
            width: 40,
            child: Center(
              child: Text(
                abbreviation.substring(0,1),
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    abbreviation,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    name,
                    style: const TextStyle(
                      color: Color(0x80FFFFFF),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            raise,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          )
        ],
      ),
    );
  }
}

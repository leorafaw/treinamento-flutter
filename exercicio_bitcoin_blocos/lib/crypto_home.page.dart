import 'package:exercicio1/crypto_coin.view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptoHomePage extends StatelessWidget {
  final Color backgroundColor = const Color(0xFF413E65);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Current Portfolio'),
          elevation: 0,
          backgroundColor: backgroundColor,
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(19, 0, 19, 0),
          color: backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),
                    const Text(
                      'BALANCE',
                      style: TextStyle(
                        color: Color(0x80FFFFFF),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      '\$103,463.59',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 41,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: const [
                        Text(
                          '28.20%',
                          style: TextStyle(
                            color: Color(0xFF2AF598),
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'today',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Your Coins',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        CupertinoButton(
                          child: const Text(
                            '+',
                            style: TextStyle(
                              color: Color(0xFF2AF598),
                              fontSize: 40,
                            ),
                          ),
                          onPressed: () {
                            print('AGROPESCA JACARE');
                          },
                        ),
                      ],
                    ),
                    CryptoCoinView(
                      backgroundColor: Color(0xFFF5317F),
                      name: 'Bitcoin',
                      raise: '6.20',
                      value: '6703.49',
                      abbreviation: 'BTC',
                    ),
                    CryptoCoinView(
                      backgroundColor: Color(0xFF8739E5),
                      name: 'Etherium',
                      raise: '6.20',
                      value: '6703.49',
                      abbreviation: 'ETH',
                    ),
                    CryptoCoinView(
                      backgroundColor: Color(0xFFE56336),
                      name: 'Litecoin',
                      raise: '6.20',
                      value: '6703.49',
                      abbreviation: 'LTC',
                    ),
                    CryptoCoinView(
                      backgroundColor: Color(0xFF7DBD28),
                      name: 'Ripple',
                      raise: '6.20',
                      value: '6703.49',
                      abbreviation: 'XRP',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

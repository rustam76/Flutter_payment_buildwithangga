import 'package:flutter/material.dart';
import 'theme.dart';

void main() {
  runApp(PaymentApps());
}

class PaymentApps extends StatefulWidget {
  @override
  State<PaymentApps> createState() => _PaymentAppsState();
}

class _PaymentAppsState extends State<PaymentApps> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget option(int index, String title, String sub, String harga) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: selectedIndex == index
                  ? Color(0xff007DFF)
                  : Color(0xffFFFFFF),
            ),
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                selectedIndex == index
                    ? Image.asset(
                        'assets/icon_check.png',
                        width: 18,
                        height: 18,
                      )
                    : Image.asset(
                        'assets/icon_uncheck.png',
                        width: 18,
                        height: 18,
                      ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: planTextStyle,
                    ),
                    Text(
                      sub,
                      style: descTextStyle,
                    ),
                  ],
                ),
                SizedBox(width: 90),
                Text(
                  harga,
                  style: priceTextStyle,
                ),
              ],
            )
          ]),
        ),
      );
    }

    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 32, right: 32),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/image_goal.png',
                width: 167,
                height: 100,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Upgrade To ',
                  style: titleTextStyle,
                ),
                Text(
                  'Pro',
                  style: proTextStyle,
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Go unlock all Feature and build your own busines',
              style: subTitleTextStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Column(
        children: [
          Container(
            width: 311,
            height: 51.23,
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color(0xff007DFF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(71))),
              onPressed: () {},
              child: Text(
                'Checkout Now',
                style: buttonTextStyle,
              ),
            ),
          )
        ],
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff04112f),
        body: Column(
          children: [
            header(),
            option(0, 'Monthly', 'Good for starting up', '\$20'),
            option(1, 'Quartyly', 'Good for starting up', '\$30'),
            option(2, 'Yearly', 'Good for starting up', '\$40'),
            button(),
          ],
        ),
      ),
    );
  }
}

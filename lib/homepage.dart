import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color color1 = HexColor("#f2f8fd");
  Color color2 = HexColor("#646a98");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: color1,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 35),
                    height: 300,
                    width: 380,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      color: Colors.white,
                      elevation: 10.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/linkedin-photo.jpeg'),
                              radius: 50,
                            ),
                          ),
                          Text(
                            'Tanush Yadav',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: color2,
                                fontFamily: 'Gilroy'),
                          ),
                          Text(
                            'Full Stack Developer',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '\$8900',
                                    style: TextStyle(
                                      color: color2,
                                      fontFamily: 'Gilroy',
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Income',
                                    style: TextStyle(
                                      fontFamily: 'Gilroy',
                                    ),
                                  ),
                                ],
                              ),
                              const VerticalDivider(
                                width: 20,
                                thickness: 1,
                                indent: 20,
                                endIndent: 0,
                                color: Colors.grey,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '\$5500',
                                    style: TextStyle(
                                      color: color2,
                                      fontFamily: 'Gilroy',
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Expenses',
                                    style: TextStyle(
                                      fontFamily: 'Gilroy',
                                    ),
                                  ),
                                ],
                              ),
                              const VerticalDivider(
                                width: 20,
                                thickness: 1,
                                indent: 20,
                                endIndent: 0,
                                color: Colors.grey,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '\$890',
                                    style: TextStyle(
                                      color: color2,
                                      fontFamily: 'Gilroy',
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Loan',
                                    style: TextStyle(
                                      fontFamily: 'Gilroy',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Overview 🔔',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: color2,
                              fontSize: 26,
                              fontFamily: 'Gilroy'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Text(
                          '12 Jan, 2023',
                          style: TextStyle(
                              color: color2,
                              fontSize: 12,
                              fontFamily: 'Gilroy'),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          color: Colors.white,
                          elevation: 10.0,
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Container(
                                  height: 50,
                                  width: 70,
                                  color: color1,
                                  child: Icon(
                                    Icons.arrow_upward,
                                    size: 30,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Sent',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Gilroy',
                                        fontSize: 14,
                                      )),
                                  Text('Sending Payment to clients',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Gilroy',
                                        fontSize: 10,
                                      )),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(100, 20, 0, 0),
                                child: Text('\$1500',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Gilroy',
                                      fontSize: 14,
                                      color: color2,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          color: Colors.white,
                          elevation: 10.0,
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Container(
                                  height: 50,
                                  width: 70,
                                  color: color1,
                                  child: Icon(
                                    Icons.arrow_downward,
                                    size: 30,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Received',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Gilroy',
                                        fontSize: 14,
                                      )),
                                  Text('Receive Salary from Company',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Gilroy',
                                        fontSize: 10,
                                      )),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(85, 20, 0, 0),
                                child: Text('\$2500',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Gilroy',
                                      fontSize: 14,
                                      color: color2,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          color: Colors.white,
                          elevation: 10.0,
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Container(
                                  height: 50,
                                  width: 70,
                                  color: color1,
                                  child: Icon(
                                    Icons.attach_money_outlined,
                                    size: 30,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Loan',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Gilroy',
                                        fontSize: 14,
                                      )),
                                  Text('Loan for the car',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Gilroy',
                                        fontSize: 10,
                                      )),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(150, 20, 0, 0),
                                child: Text('\$400',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Gilroy',
                                      fontSize: 14,
                                      color: color2,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: color1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 5, 8, 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              child: Icon(
                                Icons.home,
                                size: 30,
                              ),
                            ),
                            Icon(
                              Icons.credit_card_rounded,
                              size: 30,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              // color: color2,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: color2,
                                  ),
                                  color: color2,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Icon(
                                Icons.add,
                                size: 25,
                              ),
                            ),
                            Icon(
                              Icons.attach_money,
                              size: 30,
                            ),
                            Icon(
                              Icons.supervised_user_circle_sharp,
                              size: 30,
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

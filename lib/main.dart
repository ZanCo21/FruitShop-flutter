import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';

import 'package:fruit_app_flutter/page/detail.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      routes: {
        // '/': (context) => MyApp(),
        '/detail': (context) => const DetailCoy(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff1E1E1E),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 35, bottom: 40),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset('icons/bar.svg'),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('icons/bag.svg'),
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset('images/user.png')
                    ],
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Color(0xff2C2C2C),
                      ),
                      width: 340.0,
                      height: 220.0,
                    ),
                    Positioned(
                      top: -30,
                      left: 136,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            'images/hero.png',
                            width: 220,
                            height: 220,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 18,
                      left: 10,
                      child: Glassmorphism(
                        blur: 2,
                        opacity: 0.2,
                        radius: 20,
                        child: Container(
                          width: 320.0,
                          height: 182.0,
                          padding: const EdgeInsets.only(
                              left: 20, top: 22, bottom: 2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'OFFER',
                                style: TextStyle(
                                  color: Color(0xffF1AB68),
                                  fontSize: 8.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 6,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Discount up to 40% Off',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 140,
                                child: Text(
                                  'In honor of Word Health Day We like to give you this amazing offers.',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11.0,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Container(
                                width: 90.0,
                                height: 30.0,
                                color: const Color(0x00f1ab68),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                    backgroundColor: const Color(
                                        0xFFF1AB68), // memberikan warna F1AB68 pada tombol
                                  ),
                                  child: const Text(
                                    'View Offers',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommended Fruits',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )),
                  Row(
                    children: [
                      const Text(
                        'View All',
                        style: TextStyle(color: Color(0xffCB9F86)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset('icons/lass_than.png', width: 10),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 70),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Stack(clipBehavior: Clip.none, children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(45),
                                  topRight: Radius.circular(45)),
                              color: Color.fromARGB(255, 30, 68, 43),
                            ),
                            width: 135.0,
                            height: 120.0,
                          ),
                          Positioned(
                            top: -52,
                            left: 22,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  child: Image.asset(
                                    'images/avocado.png',
                                    width: 90,
                                    height: 140,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailCoy(),));
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 72,
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 110,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 72,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color: Colors.black,
                                  ),
                                  height: 100,
                                  width: 135,
                                ),
                                Positioned(
                                  top: 20,
                                  left: 15,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      const Text(
                                        'FRUIT',
                                        style: TextStyle(
                                          color: Color(0xffF1AB68),
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 5,
                                        ),
                                      ),
                                      Positioned(
                                        top: -6,
                                        left: 70,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Color(0xffF1AB68),
                                              size: 15,
                                            ),
                                            SizedBox(width: 5,),
                                            Text(
                                              '5.0',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: 15,
                                        child: Text(
                                          'Avocado',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 40,
                                        child: Row(
                                          children: [
                                            Text(
                                              'Rp.80.000',
                                              style: TextStyle(
                                                color: const Color(0xffF1AB68)
                                                    .withOpacity(0.8),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Positioned(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: const [
                                                  Text(
                                                    'per kg',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 11.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Stack(clipBehavior: Clip.none, children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(45),
                                  topRight: Radius.circular(45)),
                              color: Color.fromARGB(255, 60, 68, 30),
                            ),
                            width: 135.0,
                            height: 120.0,
                          ),
                          Positioned(
                            top: -30,
                            left: 22,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/pear.png',
                                  width: 80,
                                  height: 95,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 72,
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 110,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 72,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color: Colors.black,
                                  ),
                                  height: 100,
                                  width: 135,
                                ),
                                Positioned(
                                  top: 20,
                                  left: 15,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      const Text(
                                        'FRUIT',
                                        style: TextStyle(
                                          color: Color(0xffF1AB68),
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 5,
                                        ),
                                      ),
                                      Positioned(
                                        top: -6,
                                        left: 70,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Color(0xffF1AB68),
                                              size: 15,
                                            ),
                                            SizedBox(width: 5,),
                                            Text(
                                              '4.7',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: 15,
                                        child: Text(
                                          'Pear',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 40,
                                        child: Row(
                                          children: [
                                            Text(
                                              'Rp.80.000',
                                              style: TextStyle(
                                                color: const Color(0xffF1AB68)
                                                    .withOpacity(0.8),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Positioned(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: const [
                                                  Text(
                                                    'per kg',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 11.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(0),
          child: Material(
            elevation: 10,
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Color(0xff2C2C2C),
            child: Container(
              height: 70,
              width: double.infinity,
              child: ListView.builder(
                itemCount: data.length,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemBuilder: (ctx, i) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = i;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      width: 60,
                      decoration: BoxDecoration(
                        border: i == selectedIndex
                            ? const Border(
                                top: BorderSide(
                                    width: 3.0, color: Color(0xffF1AB68)))
                            : null,
                      ),
                      child: Icon(
                        data[i],
                        size: 35,
                        color: i == selectedIndex
                            ? const Color(0xffF1AB68)
                            : Color(0xffA8A8A8),
                      ),
                    ),
                  ),
                ),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// bottombar
int selectedIndex = 0;
List<IconData> data = [
  Icons.home_filled,
  Icons.search,
  Icons.favorite_rounded,
  Icons.event_note_outlined,
];

// efek blurrrr

class Glassmorphism extends StatelessWidget {
  final double blur;
  final double opacity;
  final double radius;
  final Widget child;

  const Glassmorphism({
    Key? key,
    required this.blur,
    required this.opacity,
    required this.radius,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(radius)),
          ),
          child: child,
        ),
      ),
    );
  }
}

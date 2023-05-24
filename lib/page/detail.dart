import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app_flutter/main.dart';

class DetailCoy extends StatefulWidget {
  const DetailCoy({super.key});

  @override
  State<DetailCoy> createState() => _DetailCoyState();
}

class _DetailCoyState extends State<DetailCoy> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      if (_count > 0) {
        _count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C2C2C),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 15, bottom: 30),
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: const Icon(
                        Icons.keyboard_backspace_rounded,
                        color: Color(0xffA8A8A8),
                        size: 35,
                      ),
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyApp(),
                              ));
                        });
                      },
                    ),
                    SvgPicture.asset('icons/bag_circle.svg'),
                  ],
                ),
              ),
              const Center(
                child: Text(
                  'FRUIT',
                  style: TextStyle(
                    color: Color(0xffF1AB68),
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 7,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: Text(
                  'Avocado',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    // letterSpacing: 7,
                  ),
                ),
              ),
              const SizedBox(
                height: 112,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 418.0,
                    decoration: const BoxDecoration(
                      color: Color(0xff1E1E1E),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(180.5),
                        topRight: Radius.circular(180.5),
                      ),
                    ),
                  ),
                  Container(
                    clipBehavior: Clip.none,
                    child: Positioned(
                      top: -90,
                      left: 90,
                      child: Image.asset(
                        'images/avocado.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 25),
                    padding: const EdgeInsets.only(left: 35, right: 25),
                    clipBehavior: Clip.none,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 100),
                        Row(
                          children: [
                            Text(
                              'Rp 80.000',
                              style: TextStyle(
                                color: const Color(0xffF1AB68).withOpacity(0.8),
                                fontSize: 33.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 14),
                              child: Text(
                                'Per kg',
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.8),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 55,
                            ),
                            SvgPicture.asset('icons/favorite.svg', height: 55),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color(0xffF1AB68),
                              size: 17,
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xffF1AB68),
                              size: 17,
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xffF1AB68),
                              size: 17,
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xffF1AB68),
                              size: 17,
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xffF1AB68),
                              size: 17,
                            ),
                            const SizedBox(width: 10),
                            Container(
                              child: Text(
                                '5.0',
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.8),
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                SvgPicture.asset('icons/like.svg', height: 60),
                                const SizedBox(
                                  height: 5,
                                ),
                                RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(
                                      text: 'Quality\nAssurance',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                    )),
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset('icons/delivery.svg',
                                    height: 60),
                                const SizedBox(
                                  height: 5,
                                ),
                                RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(
                                      text: 'Fast\nDelivery',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                    )),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset('icons/fork.png', height: 60),
                                const SizedBox(
                                  height: 5,
                                ),
                                RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(
                                      text: 'Best-in\nTaste',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.0,
                                        color: Colors.white,
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30, bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 130.0,
                                height: 50.0,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(0)),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0xFF2C2C2C),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const SizedBox(width: 5.0),
                                      IconButton(
                                        onPressed: _decrement,
                                        icon: const Icon(Icons.remove),
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '$_count',
                                        style: const TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: _increment,
                                        icon: const Icon(Icons.add),
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 25,),
                              Container(
                                width: 130.0,
                                height: 50.0,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xFFF1AB68),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0xFFF1AB68),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(width: 5.0),
                                      const Text(
                                        'Go to Cart',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(width: 5.0),
                                      const Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.black,
                                        size: 16.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

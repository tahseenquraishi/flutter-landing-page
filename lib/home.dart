// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_responsive_website/const.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE1D2),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 1.3,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 32),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.black12, width: 1))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/nike.png'),
                              Text(
                                'MEN',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 10),
                              ),
                              Text(
                                'WOMEN',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 10),
                              ),
                              Text(
                                'SALE',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 10),
                              ),
                              Text(
                                'SNKRS',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 10),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 60, vertical: 60),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nike Air Max',
                                  style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  'Lebagh',
                                  style: TextStyle(
                                      fontSize: 80, color: Colors.orange),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  'celebrating the hoops classic in original form as first introduced during UNDERCOVER\'s Autumn/Winter 2021 presentation. Genuine black leather takes over the upper while a smooth leather Swoosh accents the texture and collar bring a decades-old classic look.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$190',
                                      style: TextStyle(
                                        fontSize: 35,
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 10,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 22, horizontal: 40),
                                        primary: Colors.white,
                                        onPrimary: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                      ),
                                      onPressed: () => {},
                                      child: Text(
                                        'Add to cart',
                                        style: const TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: List.generate(
                              shoeList.length,
                              (index) => ShoeCard(
                                  shoeList[index]['name']!,
                                  shoeList[index]['image']!,
                                  shoeList[index]['price']!,
                                  shoeList[index]['type']!)),
                        ),
                        SizedBox(
                          height: 16,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Color(0xfffef5f1),
                            Colors.white,
                          ],
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/do-it.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Container(
                        transform: Matrix4.translationValues(40.0, 80.0, 0.0),
                        child: Image.asset(
                          'assets/main-shoe.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  final String type;
  const ShoeCard(
    this.name,
    this.image,
    this.price,
    this.type, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 16, right: 16, bottom: 8),
            padding: EdgeInsets.only(top: 50, bottom: 12, right: 12, left: 12),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      type,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.black,
                          size: 8,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.black,
                          size: 8,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.black,
                          size: 8,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.black,
                          size: 8,
                        )
                      ],
                    )
                  ],
                ),
                Text(
                  price,
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Positioned.fill(
            top: 0,
            right: 0,
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                image,
                width: 100,
              ),
            ),
          ),
          Positioned.fill(
            top: 0,
            right: 0,
            child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 16,
                  ),
                )),
          )
        ],
      ),
    );
  }
}

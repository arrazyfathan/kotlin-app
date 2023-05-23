import 'package:flutter/material.dart';

import 'kmm_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: const Color(0xFF101010),
          child: Column(
            children: [],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                'https://kotlinlang.org/assets/images/twitter/general.png'),
            const SizedBox(
              height: 10.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Concise.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  'Cross-Platform.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  'Fun',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Multiplatform',
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Server Side',
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Multiplatform Library',
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Android',
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'iOS',
                      )),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(211, 54, 54, 54),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.white30,
                    width: 1.0,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(
                        2,
                        2,
                      ),
                    )
                  ]),
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const KmmPage();
                  }));
                },
                splashColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 100, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Multiplatform',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Share code on your terms and for different platform',
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(211, 54, 54, 54),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.white30,
                    width: 1.0,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(
                        2,
                        2,
                      ),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 100, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Server-Side',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Modern development experience with familiar JVM technology',
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(211, 54, 54, 54),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.white30,
                    width: 1.0,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(
                        2,
                        2,
                      ),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 100, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Multiplatform Libraries',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Create a library that works across several platform',
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(211, 54, 54, 54),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.white30,
                    width: 1.0,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(
                        2,
                        2,
                      ),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 100, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Andorid',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Recommended by Google for building Andorid Apps',
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kotlin_app/generated/assets.dart';
import 'package:kotlin_app/state_management/basic_state_management/state_management_page.dart';
import 'package:kotlin_app/pages/widget/feature_container_widget.dart';
import 'package:kotlin_app/pages/widget_catalog_page.dart';

import 'kmm_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bgColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (bgColor == Colors.black) {
                  bgColor = Colors.white;
                } else {
                  bgColor = Colors.black;
                }
              });
            },
            icon: const Icon(
              Icons.color_lens,
            ),
          )
        ],
        backgroundColor: Colors.black,
      ),
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: const Color(0xFF101010),
          child: Column(
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  child: ListTile(
                    title: Text(
                      'Kotlin (v1.8.21)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  )),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Solutions',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Docs',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Community',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Teach',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Play',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const WidgetCatalog();
                  }));
                },
                title: const Text(
                  'Widget Catalog',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const StateManagementPage();
                  }));
                },
                title: const Text(
                  'State Management',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(Assets.imagesGeneral),
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
            const FeatureBoxWidget(
              title: 'Multiplatform',
              subtitle: 'Share code on your terms and for different platform',
              redirect: 'to_multiplatform',
            ),
            const FeatureBoxWidget(
              title: 'Server-Side',
              subtitle:
                  'Modern development experience with familiar JVM technology',
              redirect: 'to_server_side',
            ),
            const FeatureBoxWidget(
              title: 'Multiplatform Libraries',
              subtitle: 'Create a library that works across several platform',
              redirect: 'to_multiplatform_lib',
            ),
            const FeatureBoxWidget(
              title: 'Android',
              subtitle: 'Recommended by Google for building Android Apps',
              redirect: 'to_android',
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Latest from Kotlin',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Image.asset('images/latest.png'),
                  ]),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.white,
              child: Stack(
                children: [
                  SizedBox(
                    height: 400,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                    child: Text(
                      'Koltin Usage Highlight',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../kmm_page.dart';

class FeatureBoxWidget extends StatelessWidget {
  const FeatureBoxWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.redirect,
  });

  final String title;
  final String subtitle;
  final String redirect;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            return KmmPage(title: title);
          }));
        },
        splashColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 100, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}

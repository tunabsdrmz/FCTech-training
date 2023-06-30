import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo(
      {super.key,
      required this.username,
      required this.name,
      required this.website});
  final String username;
  final String name;
  final String website;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      RichText(
          text: TextSpan(
              style: const TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(61, 61, 61, 1)), //apply style to all
              children: [
            const TextSpan(
                text: 'Username:',
                style: TextStyle(fontWeight: FontWeight.w600)),
            TextSpan(
                text: username,
                style: const TextStyle(fontWeight: FontWeight.w400))
          ])),
      const SizedBox(
        height: 6,
      ),
      RichText(
          text: TextSpan(
              style: const TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(61, 61, 61, 1)), //apply style to all
              children: [
            const TextSpan(
                text: 'Full Name:',
                style: TextStyle(fontWeight: FontWeight.w600)),
            TextSpan(
                text: name, style: const TextStyle(fontWeight: FontWeight.w400))
          ])),
      const SizedBox(
        height: 6,
      ),
      RichText(
          text: TextSpan(
              style: const TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(61, 61, 61, 1)), //apply style to all
              children: [
            const TextSpan(
                text: 'Website:',
                style: TextStyle(fontWeight: FontWeight.w600)),
            TextSpan(
                text: website,
                style: const TextStyle(fontWeight: FontWeight.w400))
          ])),
    ]);
  }
}

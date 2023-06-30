import 'package:flutter/material.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo(
      {super.key, required this.company, required this.catchPhrase});
  final String company;
  final String catchPhrase;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Company',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(61, 61, 61, 1))),
          const SizedBox(
            height: 6,
          ),
          Text(company,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(61, 61, 61, 1))),
          const SizedBox(
            height: 6,
          ),
          RichText(
              text: TextSpan(
                  style: const TextStyle(
                      fontSize: 12,
                      color:
                          Color.fromRGBO(61, 61, 61, 1)), //apply style to all
                  children: [
                const TextSpan(
                    text: 'Catch Phrase:',
                    style: TextStyle(fontWeight: FontWeight.w600)),
                TextSpan(
                    text: catchPhrase,
                    style: const TextStyle(fontWeight: FontWeight.w400))
              ])),
          const SizedBox(
            height: 18,
          ),
        ]);
  }
}

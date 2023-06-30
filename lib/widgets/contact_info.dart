import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo(
      {super.key,
      required this.phone,
      required this.email,
      required this.address});
  final String phone;
  final String email;
  final dynamic address;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Contact',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(61, 61, 61, 1))),
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
                  text: 'Phone:',
                  style: TextStyle(fontWeight: FontWeight.w600)),
              TextSpan(
                  text: phone,
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
                  text: 'Email:',
                  style: TextStyle(fontWeight: FontWeight.w600)),
              TextSpan(
                  text: email,
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
                  text: 'Address:',
                  style: TextStyle(fontWeight: FontWeight.w600)),
              TextSpan(
                  text:
                      '${address.street} ${address.suite} ${address.city} \n ${address.zipcode}',
                  style: const TextStyle(fontWeight: FontWeight.w400))
            ])),
      ],
    );
  }
}

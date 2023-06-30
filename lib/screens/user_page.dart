import 'package:flutter/material.dart';

import '../widgets/company_info.dart';
import '../widgets/contact_info.dart';
import '../widgets/personal_info.dart';

class UserPage extends StatelessWidget {
  final String username;
  final String name;
  final String website;
  final String companyName;
  final String catchPhrase;
  final String phone;
  final String email;
  final dynamic address;
  const UserPage(
      {super.key,
      required this.username,
      required this.name,
      required this.website,
      required this.companyName,
      required this.catchPhrase,
      required this.phone,
      required this.email,
      required this.address});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.25;
    return Material(
      elevation: 2,
      child: Container(
        padding: EdgeInsets.only(top: height),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/ellipse.png"),
              alignment: Alignment.topCenter),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                const CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
                const SizedBox(height: 10),
                PersonalInfo(username: username, name: name, website: website),
                const SizedBox(height: 16),
                Row(children: [
                  const SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CompanyInfo(
                          company: companyName, catchPhrase: catchPhrase),
                      ContactInfo(phone: phone, email: email, address: address)
                    ],
                  ),
                ])
              ],
            )),
      ),
    );
  }
}

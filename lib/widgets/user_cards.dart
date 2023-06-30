import 'package:fctech_training/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/user_page.dart';
import '../services/service.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CardState createState() => _CardState();
}

class _CardState extends State<Cards> {
  late List<Users>? _userModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await ApiService().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: _userModel == null || _userModel!.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.separated(
                itemCount: _userModel!.length,
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Color.fromRGBO(189, 159, 233, 1),
                    endIndent: 20,
                    indent: 20,
                  );
                },
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserPage(
                            username: _userModel![index].username,
                            name: _userModel![index].name,
                            website: _userModel![index].website,
                            companyName: _userModel![index].company.name,
                            catchPhrase: _userModel![index].company.catchPhrase,
                            phone: _userModel![index].phone,
                            email: _userModel![index].email,
                            address: _userModel![index].address,
                          ),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: 90,
                      child: Card(
                          surfaceTintColor: Colors.white,
                          elevation: 0,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage: AssetImage(
                                          'assets/images/avatar.png'),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(_userModel![index].name,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromRGBO(
                                                  61, 61, 61, 1))),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        _userModel![index].company.bs,
                                        style: const TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromRGBO(99, 99, 99, 1)),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(children: [
                                  Container(
                                    width: 20.0,
                                    height: 20.0,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.only(
                                              bottomEnd: Radius.circular(4),
                                              bottomStart: Radius.circular(4),
                                              topEnd: Radius.circular(4),
                                              topStart: Radius.circular(4)),
                                      color: Color.fromRGBO(90, 15, 200, 1.0),
                                    ),
                                    child: Text(
                                      _userModel![index].id.toString(),
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ])
                              ])),
                    ),
                  );
                }));
  }
}

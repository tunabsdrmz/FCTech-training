import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  // This controller will store the value of the search bar
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 100,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(123, 63, 211, 1.0),
            borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(40.0),
                bottomEnd: Radius.circular(40.0))),
        padding: const EdgeInsets.only(
            top: 18, left: 31.0, right: 31.0, bottom: 25.0),
        child: SizedBox(
            height: 56.0,
            child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromRGBO(242, 242, 242, 1.0),
                  hintText: 'Search',
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // Perform the search here
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                ))));
  }
}

import 'package:flutter/material.dart';

class SearchContactWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SearchContactWidget({required this.scaffoldKey, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      margin: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
              decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade800,
            hintText: "Search contact ...",
            contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade800, width: 0.0),
                borderRadius: BorderRadius.circular(30.0)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade800, width: 0.0),
                borderRadius: BorderRadius.circular(30.0)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade800, width: 0.0),
              borderRadius: BorderRadius.circular(30.0),
            ),
            prefixIcon: GestureDetector(
              onTap: () {
                scaffoldKey.currentState!.openDrawer();
              },
              child: const Icon(
                Icons.menu,
                color: Colors.grey,
              ),
            ),
            suffixIcon: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          )),
          const SizedBox(height: 20.0),
          const Text("Contacts . Device"),
        ],
      ),
    ));
  }
}

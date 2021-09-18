import 'package:flutter/material.dart';

import '../widgets/search_contact_widget.dart';
import '../widgets/contact_list.dart';
import '../widgets/drawer_navigation.dart';
import '../screens/new_contact_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _homeScreenKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _homeScreenKey,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue.shade400,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NewContactScreen()));
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      drawer: const DrawerNavigation(),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SearchContactWidget(
            scaffoldKey: _homeScreenKey,
          ),
          const SliverToBoxAdapter(
            child: Divider(
              color: Colors.grey,
            ),
          ),
          const ContactList()
        ],
      ),
    );
  }
}

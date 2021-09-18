import 'dart:math';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import "../data/data.dart";
import '../models/contact_model.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      ContactModel contact = contactList[index];
      final _random = Random();

      return Container(
          child: GestureDetector(
            onTap: () {
              Alert(
                      buttons: [
                    DialogButton(
                      child: const Text(
                        "OK",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      color: const Color.fromRGBO(0, 179, 134, 1.0),
                      radius: BorderRadius.circular(0.0),
                    ),
                  ],
                      style: const AlertStyle(backgroundColor: Colors.white),
                      context: context,
                      title: contact.name,
                      desc: contact.number)
                  .show();
            },
            child: ListTile(
                leading: CircleAvatar(
                  backgroundColor:
                      Colors.primaries[_random.nextInt(Colors.primaries.length)]
                          [_random.nextInt(9) * 100],
                  child: Text(
                    contact.name[0].toUpperCase(),
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                title: Text(contact.name)),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0));
    }, childCount: contactList.length));
  }
}

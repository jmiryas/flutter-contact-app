import 'package:flutter/material.dart';

class CreateContactHeaderWidget extends StatelessWidget {
  const CreateContactHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 100.0,
        // color: Colors.amber,
        margin: const EdgeInsets.only(top: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close)),
            const Text(
              "Create Contact",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              child: Container(
                width: 100.0,
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(30.0)),
                child: const Text("Save",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center),
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
      ),
    );
  }
}

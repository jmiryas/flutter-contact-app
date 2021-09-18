import 'package:flutter/material.dart';

class NewContactFormWidget extends StatelessWidget {
  const NewContactFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 500.0,
        // color: Colors.amber,
        margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Container(
                width: 80.0,
                height: 80.0,
                child: const Icon(
                  Icons.add_a_photo_outlined,
                  color: Colors.white,
                  size: 30.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.blue.shade600,
                )),
            const SizedBox(
              height: 40.0,
            ),
            TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                  hintText: "Name ...",
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.grey.shade200),
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.grey.shade200,
                    size: 30.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade200,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade200,
                      width: 1.0,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.0, color: Colors.grey.shade200))),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Phone ...",
                  labelText: "Phone",
                  labelStyle: TextStyle(color: Colors.grey.shade200),
                  icon: Icon(
                    Icons.phone,
                    color: Colors.grey.shade200,
                    size: 30.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade200,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade200,
                      width: 1.0,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.0, color: Colors.grey.shade200))),
            )
          ],
        ),
      ),
    );
  }
}

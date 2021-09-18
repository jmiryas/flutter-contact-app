import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SaveToDeviceWidget extends StatelessWidget {
  const SaveToDeviceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.grey.shade700,
        height: 60.0,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            const Text(
              "Save to",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.grey, width: 1.0)),
              child: Row(
                children: [
                  Container(
                    height: 30.0,
                    width: 30.0,
                    child: Icon(
                      Icons.system_security_update,
                      color: Colors.grey.shade700,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text("Device"),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

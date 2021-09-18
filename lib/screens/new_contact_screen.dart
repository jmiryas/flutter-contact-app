import 'package:flutter/material.dart';

import '../widgets/create_contact_header_widget.dart';
import '../widgets/save_to_device_widget.dart';
import '../widgets/new_contact_form.dart';

class NewContactScreen extends StatelessWidget {
  const NewContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          CreateContactHeaderWidget(),
          SaveToDeviceWidget(),
          NewContactFormWidget()
        ],
      ),
    );
  }
}

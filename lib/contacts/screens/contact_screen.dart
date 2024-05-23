import 'package:flutter/material.dart';

import '../widgets/contact_item.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  int numOfVisibleItem = 0;
  ContactItem contactItem1 = ContactItem();
  ContactItem contactItem2 = ContactItem();
  ContactItem contactItem3 = ContactItem();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Contacts Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(
                  hintText: 'Enter your name here',
                  icon: Icons.edit,
                  controller: nameController),
              CustomTextField(
                hintText: 'Enter your number here',
                icon: Icons.phone,
                controller: phoneController,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomButton(
                    color: Colors.blue,
                    label: 'Add',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        addItem();
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text(
                            'Processing Data',
                          )),
                        );
                      }
                    },
                  )),
                  // SizedBox(
                  //   width: 4,
                  // ),
                  // Expanded(
                  //     child: CustomButton(
                  //   color: Colors.red,
                  //   label: 'Delete',
                  //   onPressed: deleteItem,
                  // )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              contactItem1,
              contactItem2,
              contactItem3
            ],
          ),
        ),
      ),
    );
  }

  void addItem() {
    if (numOfVisibleItem == 0) {
      contactItem1 = ContactItem(
        name: nameController.text,
        number: phoneController.text,
        index: 1,
        isVisible: true,
        onDelete: deleteItem,
      );
    } else if (numOfVisibleItem == 1) {
      contactItem2 = ContactItem(
        name: nameController.text,
        index: 2,
        number: phoneController.text,
        isVisible: true,
        onDelete: deleteItem,
      );
    } else if (numOfVisibleItem == 2) {
      contactItem3 = ContactItem(
        name: nameController.text,
        index: 3,
        number: phoneController.text,
        isVisible: true,
        onDelete: deleteItem,
      );
    } else {
      return;
    }
    numOfVisibleItem++;
    nameController.clear();
    phoneController.clear();
    setState(() {});
  }

  deleteItem(int index) {
    if (index == 1) {
      contactItem1 = ContactItem(
        isVisible: false,
      );
    } else if (index == 2) {
      contactItem2 = ContactItem(
        name: nameController.text,
        number: phoneController.text,
        isVisible: false,
      );
    } else if (index == 3) {
      contactItem3 = ContactItem(
        name: nameController.text,
        number: phoneController.text,
        isVisible: false,
      );
    } else {
      return;
    }
    numOfVisibleItem--;
    setState(() {});
  }
}

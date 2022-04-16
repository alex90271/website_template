import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ContactModel {
  String fName;
  String lName;
  String bisName;
  String phone;
  String email;
  String projType;

  ContactModel(
      {required this.fName,
      required this.lName,
      required this.bisName,
      required this.phone,
      required this.email,
      required this.projType});
}

FirebaseFirestore firestore = FirebaseFirestore.instance;

class SubmitForm extends StatelessWidget {
  final String fName;
  final String lName;
  final String bisName;
  final String phone;
  final String email;
  final String projType;
  const SubmitForm(
      {Key? key,
      required this.fName,
      required this.lName,
      required this.bisName,
      required this.phone,
      required this.email,
      required this.projType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference contactForm =
        FirebaseFirestore.instance.collection('contact_form');

    Future<void> submitForm() {
      return contactForm
          .add({
            'first_name': fName,
            'last_name': lName,
            'buisness_name': bisName,
            'phone': phone,
            'email': email,
            'project_type': projType,
          })
          .then((value) => log("User $fName added"))
          .catchError((error) => log("Failed adding user: $error"));
    }

    return TextButton(onPressed: submitForm, child: const Text('Submit'));
  }
}

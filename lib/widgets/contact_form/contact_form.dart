import 'dart:developer';
import 'package:flutter/material.dart';
import '../../globals.dart';
import 'package:validators/validators.dart';
import 'alert_dialog.dart';
import 'contact_field.dart';

class TextContactForm extends StatefulWidget {
  const TextContactForm({
    Key? key,
  }) : super(key: key);

  @override
  State<TextContactForm> createState() => _TextContactFormState();
}

class _TextContactFormState extends State<TextContactForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          FormattedTextField(
              initial: '',
              length: 30,
              label: 'First Name',
              helper: 'First Name'),
          FormattedTextField(
            initial: '',
            length: 30,
            label: 'Last Name',
            helper: 'Last Name',
          ),
          FormattedTextField(
            initial: '',
            length: 30,
            label: 'Buisness Name',
            helper: 'Business Name',
          ),
          FormattedPhoneField(
            initial: '',
          ),
          FormattedEmailField(
            initial: '',
          ),
          FormattedTextField(
            initial: '',
            length: 30,
            label: 'Project Type',
            helper: 'Project Type',
          ),
          ElevatedButton(
            //submit button
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(brandBlack)),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                log('valid inputs');
                showValid(context);
                _formKey.currentState!.reset();
              } else {
                log('invalid inputs');
                showInvalid(context);
              }
            },
            child: const Text(
              'Submit',
              style: TextStyle(color: brandWhite),
            ),
          ),
        ],
      ),
    );
  }
}

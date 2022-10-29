import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          print('a');
        },
        child: Column(children: [
          TextFormField(validator: FormFieldValidator().isNotEmpty),
          TextFormField(validator: FormFieldValidator().isNotEmpty),
          DropdownButtonFormField<String>(
            validator: FormFieldValidator().isNotEmpty,
            items: const [DropdownMenuItem(value: 'v', child: Text('a')), DropdownMenuItem(value: 'v1', child: Text('a'))],
            onChanged: (value) {},
          ),
          ElevatedButton(
              onPressed: () {
                if (_key.currentState?.validate() ?? false) {
                  print('okey');
                }
              },
              child: const Text('Save'))
        ]),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage._notEmpty;
  }
}

class ValidatorMessage {
  static const String _notEmpty = 'Bu alan boş geçilemez';
}
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_get_started/product/widget/button/answer_button.dart';
import 'package:flutter_application_get_started/product/widget/button/loading_button.dart';
import 'package:flutter_application_get_started/product/widget/callback_dropdown.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({super.key});

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CallbackDropdown(onUserSelected: (CallbackUser user) {
            print(user);
          }),
          AnswerButton(
            onNumber: (number) {
              return number % 3 == 1;
            },
          ),
          LoadingButton(
            title: 'Save',
            onPressed: () async {
              await Future.delayed(const Duration(seconds: 10));
            },
          )
        ],
      ),
    );
  }
}

class CallbackUser {
  final String name;
  final int id;

  CallbackUser(this.name, this.id);

  // TODO: Dummy Remove it
  static List<CallbackUser> dummyUser() {
    return [
      CallbackUser('vb', 123),
      CallbackUser('vb2', 1234),
    ];
  }

  @override
  bool operator ==(covariant CallbackUser other) {
    if (identical(this, other)) return true;

    return other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}

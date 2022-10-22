import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_get_started/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 20,
            buildCounter: (context,
                {int? currentLength, bool? isFocused, maxLength}) {
              return _animatedContainer(currentLength);
            },
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            focusNode: focusNodeTextFieldOne,
            inputFormatters: [
              TextProjectInputFormatter()._formatter,
            ],
            textInputAction: TextInputAction.next,
            decoration: _InputDecarotor().emailInput,
            //fillColor: Colors.white,
            //filled: true
          ),
          TextFormField(
            focusNode: focusNodeTextFieldTwo,
            minLines: 2,
            maxLines: 4,
          )
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
        key: key,
        duration: const Duration(milliseconds: 100),
        height: 10,
        width: 10.0 * (currentLength ?? 0),
        color: Colors.green);
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "a") {
      return oldValue;
    }
    return newValue;
  });
}

class _InputDecarotor {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,
    //fillColor: Colors.white,
    //filled: true
  );
}

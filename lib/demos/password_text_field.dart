import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, this.controller});

  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final _obsecureText = '#';
  bool _isSecure = true;

  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        hintText: 'Password',
        suffix: _onVisibilityIcon(),
      ),
      autofillHints: const [AutofillHints.password],
      obscureText: _isSecure,
      obscuringCharacter: _obsecureText,
      keyboardType: TextInputType.visiblePassword,
    );
  }

  IconButton _onVisibilityIcon() {
    return IconButton(
        onPressed: _changeLoading,
        icon: AnimatedCrossFade(
            firstChild: const Icon(Icons.visibility_outlined),
            secondChild: const Icon(Icons.visibility_off_outlined),
            crossFadeState: _isSecure
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1)));
    //icon: Icon(_isSecure ? Icons.visibility : Icons.visibility_off));
  }
}

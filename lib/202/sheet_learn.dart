import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_get_started/101/list_view_learn.dart';
import 'package:flutter_application_get_started/202/image_learn_202.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> with ProductSheedMixin {
  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      body: Center(
          child: TextButton(
        onPressed: () {
          showCustomSheet(context, const ListViewLearn());
        },
        child: const Text('Show'),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            isScrollControlled: true,
            builder: (context) {
              return _CustomSheet(backgroundColor: _backgroundColor);
            },
          );
          //inspect(result);
          if (result is bool) {
            setState(() {
              _backgroundColor = Colors.cyan;
            });
          }
        },
        child: const Icon(Icons.share),
      ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  const _CustomSheet({Key? key, required Color backgroundColor}) : super(key: key);

  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<_CustomSheet> {
  Color _backgroundColor = Colors.transparent;
  final _gripHeight = 30.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: _backgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: _gripHeight,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Divider(
                    color: Colors.black26,
                    thickness: 3,
                    indent: MediaQuery.of(context).size.width * 0.45,
                    endIndent: MediaQuery.of(context).size.width * 0.45,
                  ),
                  Positioned(
                      right: 10,
                      top: 0,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.close),
                        ),
                      ))
                ],
              ),
            ),
            const Text('data22'),
            Image.network('https://picsum.photos/200', height: 200),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _backgroundColor = Colors.amber;
                });
                Navigator.of(context).pop<bool>(true);
              },
              child: const Text('OK'),
            )
          ],
        ),
      ),
    );
  }
}

mixin ProductSheedMixin {
  Future<T?> showCustomSheet<T>(BuildContext context, Widget child) async {
    return showModalBottomSheet<T>(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) {
        return CustomMainSheet(child: child);
      },
    );
  }
}

class CustomMainSheet extends StatelessWidget {
  const CustomMainSheet({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [const _BaseSheetHeader(), Expanded(child: child)],
      ),
    );
  }
}

class _BaseSheetHeader extends StatelessWidget {
  const _BaseSheetHeader({Key? key})
      : _gripHeight = 30,
        super(key: key);

  final double _gripHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _gripHeight,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Divider(
            color: Theme.of(context).colorScheme.onBackground,
            thickness: 3,
            indent: MediaQuery.of(context).size.width * 0.45,
            endIndent: MediaQuery.of(context).size.width * 0.45,
          ),
          Positioned(
              right: MediaQuery.of(context).size.width * 0.01,
              top: 0,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.close),
                ),
              ))
        ],
      ),
    );
  }
}

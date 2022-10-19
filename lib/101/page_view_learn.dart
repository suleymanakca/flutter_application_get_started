import 'package:flutter/material.dart';
import 'package:flutter_application_get_started/101/icon_learn.dart';
import 'package:flutter_application_get_started/101/image_learn.dart';
import 'package:flutter_application_get_started/101/stack_learn.dart';

class PageLearnView extends StatefulWidget {
  const PageLearnView({super.key});

  @override
  State<PageLearnView> createState() => _PageLearnViewState();
}

class _PageLearnViewState extends State<PageLearnView> {
  final _pageController = PageController();
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: _DurationUtilities._durationLow,
                  curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: _DurationUtilities._durationLow,
                  curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: false,
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [
          const ImageLearn(),
          IconLearnView(),
          const StackLearn(),
        ],
      ),
    );
  }
}

class _DurationUtilities {
  static const _durationLow = Duration(seconds: 1);
}

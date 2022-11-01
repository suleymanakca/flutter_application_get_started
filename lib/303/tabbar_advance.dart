import 'package:flutter/material.dart';
import 'package:flutter_application_get_started/303/feed_view.dart';

import '../101/icon_learn.dart';
import '../101/image_learn.dart';

class TabAdvanceLearn extends StatefulWidget {
  const TabAdvanceLearn({super.key});

  @override
  State<TabAdvanceLearn> createState() => _TabAdvanceLearnState();
}

class _TabAdvanceLearnState extends State<TabAdvanceLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notcedValue = 10;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_MyTabViews.home.index);
          },
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: _notcedValue,
          child: _myTabView(),
        ),
        appBar: AppBar(),
        body: _tabBarView(),
      ),
    );
  }

  TabBar _myTabView() {
    return TabBar(padding: EdgeInsets.zero, onTap: (int index) {}, controller: _tabController, tabs: _MyTabViews.values.map((e) => Tab(text: '${e.name}')).toList());
  }

  TabBarView _tabBarView() {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: [const FeedView(), IconLearnView(), const ImageLearn(), IconLearnView()],
    );
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _myTabViewExtension on _MyTabViews {}

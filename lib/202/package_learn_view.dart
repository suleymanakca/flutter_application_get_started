import 'package:flutter/material.dart';
import 'package:flutter_application_get_started/202/packages/launch_manager.dart';
import 'package:flutter_application_get_started/202/packages/loading_bar.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onSecondary,
        onPressed: () async {
          //await launchUrl('https://pub.dev/packages/url_launcher');
        },
      ),
      body: Column(
        children: [
          Text('a', style: Theme.of(context).textTheme.subtitle1),
          const LoadingBar(),
        ],
      ),
    );
  }
}

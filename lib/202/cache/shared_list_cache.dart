import 'package:flutter/material.dart';
import 'package:flutter_application_get_started/202/cache/shared_learn_cache.dart';
import 'package:flutter_application_get_started/202/cache/shared_manager.dart';
import 'package:flutter_application_get_started/202/cache/user_cache/user_cache_manager.dart';

import 'user_cache/user_model.dart';

class SharedListCache extends StatefulWidget {
  const SharedListCache({super.key});

  @override
  State<SharedListCache> createState() => _SharedListCacheState();
}

class _SharedListCacheState extends LoadingStatefull<SharedListCache> {
  late final UserCacheManager userCacheManager;
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    initializeAndSave();
  }

  Future<void> initializeAndSave() async {
    changeLoading();
    final SharedManager manager = SharedManager();
    await manager.init();
    userCacheManager = UserCacheManager(manager);
    users = userCacheManager.getItems() ?? [];
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: isLoading ? CircularProgressIndicator(color: Theme.of(context).scaffoldBackgroundColor) : null,
        actions: isLoading
            ? null
            : [
                IconButton(
                    onPressed: () async {
                      changeLoading();
                      await userCacheManager.saveItems(users);
                      changeLoading();
                    },
                    icon: const Icon(Icons.download_for_offline_outlined)),
                IconButton(
                    onPressed: () async {
                      changeLoading();
                      userCacheManager.getItems();
                      changeLoading();
                    },
                    icon: const Icon(Icons.remove_circle_outline)),
              ],
      ),
      body: _UserListView(users: users),
    );
  }
}

class _UserListView extends StatelessWidget {
  _UserListView({
    Key? key,
    required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
              title: Text(users[index].name ?? ''),
              subtitle: Text(users[index].descripton ?? ''),
              trailing: Text(
                users[index].url ?? '',
                style: Theme.of(context).textTheme.subtitle1?.copyWith(decoration: TextDecoration.underline),
              )),
        );
      },
    );
  }
}

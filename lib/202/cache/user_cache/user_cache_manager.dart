import 'dart:convert';

import '../shared_learn_cache.dart';
import '../shared_manager.dart';
import 'user_model.dart';

class UserCacheManager {
  final SharedManager sharedManager;

  UserCacheManager(this.sharedManager);

  Future<void> saveItems(List<User> items) async {
    //compute
    final _items = items.map((elements) => jsonEncode(elements.toJson())).toList();
    await sharedManager.saveStringItems(SharedKeys.users, _items);
  }

  List<User>? getItems() {
    //compute
    final itemsString = sharedManager.getStringItems(SharedKeys.users);
    // arıza var!!
    if (itemsString?.isNotEmpty ?? false) {
      return itemsString!.map((element) {
        final json = jsonDecode(element);
        if (json is Map<String, dynamic>) {
          return User.fromJson(json);
        }
        return User('', '', '');
      }).toList();
    }
    return UserItems().users;
  }
}

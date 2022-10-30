import 'package:flutter_application_get_started/303/generic_learn.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});

  test('User calculate', () {
    final users = [
      GenericUser('vb', '11', 10),
      GenericUser('vb', '11', 10),
      GenericUser('vb', '11', 20),
    ];

    final userManagement = UserManagement(AdminUser('vadmin', '1', 15, 1));
    final result = userManagement.calculateMoneys(users);
    final response = userManagement.showNames<String>(users);

    expect(result, 55);
  });
}

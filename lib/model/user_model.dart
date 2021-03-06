import 'package:jwt_auth/jwt_auth.dart';

class UserModel extends ManagedObject<_User> implements _User {}

class _User {
  @Column(primaryKey: true, autoincrement: true)
  int id;

  String login;
  String password;

  @Column(indexed: true)
  DateTime createdAt;
}

import 'package:jwt_auth/jwt_auth.dart';
import 'package:jwt_auth/model/user_model.dart';

class AuthenticationController extends ResourceController {
  AuthenticationController(this.context);

  final ManagedContext context;

  @Operation.post()
  Future<Response> login() async {
    final params = request.body.as();

    return Response.ok(params['login']);
  }

  @Operation.put()
  Future<Response> register() async {
    final params = request.body.as();

    final query = Query<UserModel>(context)
      ..values.login = params['login'].toString()
      ..values.password = params['password'].toString()
      ..values.createdAt = DateTime.now();

    final user = await query.insert();

    return Response.ok(user);
  }

  @Operation.get()
  Future<Response> profile() async {
    final params = request.body.as();

    return Response.ok(params['login']);
  }

  @Operation.put()
  Future<Response> refreshToken() async {
    final params = request.body.as();

    return Response.ok(params['login']);
  }
}

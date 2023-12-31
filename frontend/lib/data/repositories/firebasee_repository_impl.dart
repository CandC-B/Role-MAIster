import 'package:role_maister/data/datasource/firebase_remote_datasource.dart';
import 'package:role_maister/domain/entities/text_message_entity.dart';
import 'package:role_maister/domain/entities/user_entity.dart';
import 'package:role_maister/domain/repositories/firebase_repository.dart';

class FireBaseRepositoryImpl implements FireBaseRepository {
  final FirebaseRemoteDataSource firebaseRemoteDataSource;

  FireBaseRepositoryImpl({this.firebaseRemoteDataSource});

  @override
  Future<String> getCurrentUid() async =>
      await firebaseRemoteDataSource.getCurrentUid();

  @override
  Future<bool> isSignIn() async =>
      await firebaseRemoteDataSource.isSignIn();

  @override
  Future<void> signIn(String email, String password) async =>
      await firebaseRemoteDataSource.signIn(email, password);

  @override
  Future<void> signUp(String email, String password) async =>
      await firebaseRemoteDataSource.signUp(email, password);

  @override
  Future<void> getCreateCurrentUser(String email, String name,
      String profileUrl)async {
    return await firebaseRemoteDataSource.getCreateCurrentUser(email, name, profileUrl);
  }

  @override
  Stream<List<TextMessageEntity>> getMessages() {
    return firebaseRemoteDataSource.getMessages();
  }

  @override
  Stream<List<UserEntity>> getUsers() {
    return firebaseRemoteDataSource.getUsers();
  }

  @override
  Future<void> sendTextMessage(TextMessageEntity textMessage) {
    return firebaseRemoteDataSource.sendTextMessage(textMessage);
  }

  @override
  Future<void> signOut() => firebaseRemoteDataSource.signOut();

}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ReturnzFirebaseUser {
  ReturnzFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ReturnzFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ReturnzFirebaseUser> returnzFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<ReturnzFirebaseUser>(
        (user) => currentUser = ReturnzFirebaseUser(user));

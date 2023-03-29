import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class YellowForumFirebaseUser {
  YellowForumFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

YellowForumFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<YellowForumFirebaseUser> yellowForumFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<YellowForumFirebaseUser>(
      (user) {
        currentUser = YellowForumFirebaseUser(user);
        return currentUser!;
      },
    );

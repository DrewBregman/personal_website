import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DrewBregmanFirebaseUser {
  DrewBregmanFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DrewBregmanFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DrewBregmanFirebaseUser> drewBregmanFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DrewBregmanFirebaseUser>(
      (user) {
        currentUser = DrewBregmanFirebaseUser(user);
        return currentUser!;
      },
    );

import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

import 'auth_util.dart';

class PersonalWebsiteFirebaseUser {
  PersonalWebsiteFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PersonalWebsiteFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PersonalWebsiteFirebaseUser> personalWebsiteFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PersonalWebsiteFirebaseUser>(
      (user) {
        currentUser = PersonalWebsiteFirebaseUser(user);
        updateUserJwtTimer(user);
        return currentUser!;
      },
    );

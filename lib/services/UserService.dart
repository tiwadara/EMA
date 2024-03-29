
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserService  {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
//  final Firestore _db = Firestore.instance;

  Future<FirebaseUser> googleSignIn() async {
    GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    FirebaseUser user = await _auth.signInWithGoogle(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
    updateUserData(user);
    print("signed in " + user.displayName);

    return user;
  }

  void updateUserData(FirebaseUser user) async {
//    DocumentReference ref = _db.collection('users').document(user.uid);
//    return ref.setData({
//      'uid': user.uid,
//      'email': user.email,
//      'photoURL': user.photoUrl,
//      'displayName': user.displayName,
//      'lastSeen': DateTime.now()
//    }, merge: true);
  }

  void signOut() {
    _auth.signOut();
  }
}

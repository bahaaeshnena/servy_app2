import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:servy_app2/src/features/authentication/screens/home/home_screen.dart';
import 'package:servy_app2/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:servy_app2/src/respository/authentication_respository/exceptions/signup_email_password_failure.dart';

class AuthenticationRespository extends GetxController {
  static AuthenticationRespository get instance => Get.find();

  //varibales
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 6));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const HomeScreen()); //homePage
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const HomeScreen())
          : Get.to(() => const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpEmailPasswordFailure.code(e.code);
      // ignore: avoid_print
      print('FIREBASE AUTH EXCEPTION -${ex.message}');
    } catch (_) {
      const ex = SignUpEmailPasswordFailure();
      // ignore: avoid_print
      print('FIREBASE AUTH EXCEPTION -${ex.message}');
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      // ignore: unused_catch_clause, empty_catches
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }

  Future<void> logout() async => await _auth.signOut();
}

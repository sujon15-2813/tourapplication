import 'package:get/get.dart';
import 'package:tourapplication/ui/views/auth/sign_in.dart';
import 'package:tourapplication/ui/views/auth/sign_up.dart';
import 'package:tourapplication/ui/views/onboarding_screen.dart';
import 'package:tourapplication/ui/views/privacy_policy.dart';
import 'package:tourapplication/ui/views/splash_screen.dart';
import 'package:tourapplication/ui/views/user_form.dart';

// akhane joto gulo page hobe seta dibo
const String splash = "/splash-screen";
const String onboarding = "/onboarding-screen";
const String signUp = "/sign-up-screen";
const String signIn = "/sign-in-screen";
const String userForm = "/user-form-screen";
const String privacyPolicy = "/privacy-policy";

// control our page route flow
//kon page theke  kon page a jabo seta list akare nichi

List<GetPage> getpages = [
  GetPage(name: splash, page: () => SplashScreen()),
  GetPage(name: onboarding, page: () => OnboardingScreen()),
  GetPage(name: signUp, page: () => SignUp()),
  GetPage(name: signIn, page: () => SignIn()),
  GetPage(name: userForm, page: () => UserForm()),
  GetPage(name: privacyPolicy, page: () => PrivacyPolicy()),
];
 
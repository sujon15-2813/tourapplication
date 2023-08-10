import 'package:get/get.dart';
import 'package:tourapplication/ui/views/onboarding_screen.dart';
import 'package:tourapplication/ui/views/splash_screen.dart';

// akhane joto gulo page hobe seta dibo 
const String splash = "/splash-screen";
const String onboarding = "/onboarding-screen";

// control our page route flow
//kon page theke  kon page a jabo seta list akare nichi 

List<GetPage> getpages = [
  GetPage(name: splash, page: () => SplashScreen()),
  GetPage(name: onboarding, page: () => OnboardingScreen()),
];
 
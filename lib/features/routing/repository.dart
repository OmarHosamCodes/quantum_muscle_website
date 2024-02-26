import 'package:quantum_muscle_website/library.dart';

class RoutingRepository {
  static GoRouter router = GoRouter(
    initialLocation: Routes.home,
    routerNeglect: true,
    routes: [
      ShellRoute(
        builder: (context, state, child) => Routing(
          state: state,
          child: child,
        ),
        routes: [
          GoRoute(
            path: Routes.home,
            builder: (context, state) {
              return const Home();
            },
          ),
          GoRoute(
            path: Routes.about,
            builder: (context, state) {
              return const About();
            },
          ),
          GoRoute(
            path: Routes.contact,
            builder: (context, state) {
              return const Contact();
            },
          ),
        ],
      ),
    ],
  );

  static void goHome() {
    router.go(Routes.home);
  }

  static void goAbout() {
    router.go(Routes.about);
  }

  static void goContact() {
    router.go(Routes.contact);
  }
}

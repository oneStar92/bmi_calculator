import 'package:bmi_calculator/main/main_screen.dart';
import 'package:bmi_calculator/result/result_screen.dart';
import 'package:go_router/go_router.dart';

final routers = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => MainScreen(),
    ),
    GoRoute(
      path: '/result',
      builder: (context, state) {
        return ResultScreen(
          height: double.parse(state.uri.queryParameters['height']!),
          weight: double.parse(state.uri.queryParameters['weight']!),
        );
      },
    ),
  ],
);

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pos_assigmnet/application/pages/employ_shift/employee_shifts.dart';

import 'goroutes_observer.dart';


const String routeHome = "route_home";

final GlobalKey<NavigatorState> _rootNavigatorKey =
GlobalKey<NavigatorState>(debugLabel: 'root');

final routes = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: routeHome,
  observers: [GoRouterObserver()],
  routes: [
    GoRoute(
        path: routeHome,
        builder: (context, state) {
          return const EmployeeShiftWrapper();
        }),
  ],
);

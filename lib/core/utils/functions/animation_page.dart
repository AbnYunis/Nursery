import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage buildPageWithTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
      key: state.pageKey,
      transitionDuration: const Duration(milliseconds: 500),
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child)
      {
        return FadeTransition(
          opacity:
          CurveTween(curve: Curves.easeInOutCirc,).animate(animation),
          child: child,
        );
      }
  );
}
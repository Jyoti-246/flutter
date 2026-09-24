import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final Widget child;

  const AppContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isTablet =
            constraints.maxWidth < 900 && constraints.maxWidth > 600;
        final isMobile = constraints.maxWidth < 600;

        final horizontalPadding = isMobile ? 20.0 : (isTablet ? 30.0 : 100.0);

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: child,
        );
      },
    );
  }
}

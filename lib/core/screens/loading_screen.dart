import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rentworks/core/app_router.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  late Animation<Decoration> _decorationAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      })
      ..forward();

    _sizeAnimation = TweenSequence([
      TweenSequenceItem(tween: Tween<double>(begin: 1.0, end: 1.2), weight: 1),
      TweenSequenceItem(tween: Tween<double>(begin: 1.2, end: 1.0), weight: 1),
    ]).animate(_controller);

    _decorationAnimation = DecorationTween(
      begin: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1A237E), Color(0xFF283593), Color(0xFF303F9F)],
          stops: [0.0, 0.5, 1.0],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      end: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF0077B6),
            Color(0xFF0066CC),
            Color(0xFF004C99),
          ],
          stops: [0.0, 0.5, 1.0],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
        reverseCurve: Curves.easeInOut,
      ),
    );
    Future.delayed(const Duration(seconds: 3), () {
      context.replace(AppRouter.LOGIN_PAGE_ROUTE);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            decoration: _decorationAnimation.value,
            child: Center(
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _sizeAnimation.value,
                    child: child,
                  );
                },
                child: SvgPicture.asset("assets/images/logo.svg",
                    height: 150, width: 150, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}

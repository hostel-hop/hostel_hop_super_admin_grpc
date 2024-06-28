import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';
import 'package:google_sign_in_web/web_only.dart';
import 'package:hostel_hop_super_admin/generated/assets.gen.dart';
import 'package:hostel_hop_super_admin/src/features/login/cubit/login_cubit.dart';
import 'package:hostel_hop_super_admin/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: const _LoginContent(),
    );
  }
}

class _LoginContent extends StatefulWidget {
  const _LoginContent();

  @override
  State<_LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<_LoginContent> {
  late final StreamSubscription<GoogleSignInUserData?>? _subscription;
  @override
  void initState() {
    super.initState();

    _subscription =
        getIt<GoogleSignInPlatform>().userDataEvents?.listen((data) {
      if (data != null) {
        context.read<LoginCubit>().signIn(data);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        context.goNamed('home');
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Assets.images.logoGroup.svg(),
            const SizedBox(height: 30),
            renderButton(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:hostel_hop_super_admin/src/module/register_module.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthMessageClientInterceptor extends ClientInterceptor {
  final SupabaseAuthClient _authClient;

  AuthMessageClientInterceptor(this._authClient);

  FutureOr<void> _provider(Map<String, String> metadata, String uri) async {
    var accessToken = _authClient.currentSession?.accessToken;
    if (accessToken != null) {
      metadata['Authorization'] = 'Bearer $accessToken';
    }
  }

  @override
  ResponseFuture<R> interceptUnary<Q, R>(
    ClientMethod<Q, R> method,
    Q request,
    CallOptions options,
    ClientUnaryInvoker<Q, R> invoker,
  ) {
    var newOptions = options.mergedWith(CallOptions(providers: [_provider]));
    if (kDebugMode) {
      print('Protected Unary call: ${method.path}');
    }
    return invoker(method, request, newOptions);
  }

  @override
  ResponseStream<R> interceptStreaming<Q, R>(
    ClientMethod<Q, R> method,
    Stream<Q> requests,
    CallOptions options,
    ClientStreamingInvoker<Q, R> invoker,
  ) {
    if (kDebugMode) {
      print('Streaming call: ${method.path}');
    }

    return super.interceptStreaming(method, requests, options, invoker);
  }
}

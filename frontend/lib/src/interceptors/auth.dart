import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthMessageClientInterceptor extends ClientInterceptor {

  FutureOr<void> _provider(Map<String, String> metadata, String uri) async {
    var accessToken = Supabase.instance.client.auth.currentSession?.accessToken;
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

    var anonServices = [
      // '/hostelhop.v1.Greeter',
    ];

    if (anonServices.any((element) => method.path.startsWith(element))) {
      if (kDebugMode) {
        print('Anonymous Unary call: ${method.path}');
      }
      return super.interceptUnary(method, request, options, invoker);
    }

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

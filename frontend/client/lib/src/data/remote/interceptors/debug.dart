import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';

@injectable
class DebugMessageClientInterceptor extends ClientInterceptor {
  @override
  ResponseFuture<R> interceptUnary<Q, R>(
    ClientMethod<Q, R> method,
    Q request,
    CallOptions options,
    ClientUnaryInvoker<Q, R> invoker,
  ) {
    if (kDebugMode) {
      print('Unary call: ${method.path}');
    }
    return super.interceptUnary(method, request, options, invoker);
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

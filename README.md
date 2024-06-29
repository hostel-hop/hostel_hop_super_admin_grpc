# HostelHop gRPC Server & Protos

Pre-requisites:

1. Dart SDK (<https://dart.dev/get-dart>)
2. Flutter (Optional)
3. Protobuf (<https://developers.google.com/protocol-buffers/docs/dart-tutorial>)
4. Envoy

Getting Started:

1. Clone the repository
2. Install protoc `brew install protobuf`
3. Run `dart pub global activate protoc_plugin`
4. Update your PATH: `export PATH="$PATH":"$HOME/.pub-cache/bin"`
5. Start the gRPC server: `dart grpc/bin/server.dart`
6. Modify the client to point to localhost:50051 (See comments)
7. CD into envoy and run `envoy -c envoy.yaml`
8. Run the gRPC client: `dart grpc/bin/client.dart`

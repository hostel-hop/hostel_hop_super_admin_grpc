# HostelHop gRPC Server & Protos

Pre-requisites:
1. Dart SDK (https://dart.dev/get-dart)
2. Flutter (Optional)
3. Protobuf (https://developers.google.com/protocol-buffers/docs/dart-tutorial)

Getting Started:

1. Clone the repository
2. Install protoc `brew install protobuf`
3. Run `dart pub global activate protoc_plugin`
4. Update your PATH: `export PATH="$PATH":"$HOME/.pub-cache/bin"`
5. Start the gRPC server: `dart grpc/bin/server.dart`
6. Modify the client to point to localhost:50051 (See comments)
7. Run the gRPC client: `dart grpc/bin/client.dart`

Prisma Setup:

1. Install Prisma CLI: `npm install prisma` in the `grpc` directory
2. This will add package.json and node_modules to the grpc directory which should not be added to the repo
3. Run `npx prisma generate` to generate the Prisma client
4. Modify the prisma/schema.prisma file and repeat step 3 to generate the Prisma client again
5. Make sure to update your .env file with the DATABASE_URL




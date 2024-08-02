FROM ghcr.io/cirruslabs/flutter:stable as frontend


# Define environment variables
ARG SUPABASE_URL
ARG SUPABASE_ANON_KEY
ARG GOOGLE_WEB_CLIENT_ID
ARG GRPC_HOST

WORKDIR /app
COPY ./client ./
RUN flutter pub get
RUN flutter build web --release -t lib/main.dart \
    --dart-define=SUPABASE_URL=$SUPABASE_URL \
    --dart-define=SUPABASE_ANON_KEY=$SUPABASE_ANON_KEY \
    --dart-define=GOOGLE_WEB_CLIENT_ID=$GOOGLE_WEB_CLIENT_ID \
    --dart-define=GRPC_HOST=$GRPC_HOST

# Specify the Dart SDK base image version using dart:<version> (ex: dart:2.12)
FROM dart:stable AS backend

# Resolve app dependencies.
WORKDIR /app
COPY ./server/pubspec.* ./
RUN dart pub get

# Copy app source code and AOT compile it.
COPY ./server .
# Ensure packages are still up-to-date if anything has changed
RUN dart pub get --offline
RUN dart compile exe bin/server.dart -o bin/server

# Build minimal serving image from AOT-compiled `/server` and required system
# libraries and configuration files stored in `/runtime/` from the build stage.
FROM alpine:latest
COPY --from=backend /runtime/ /
COPY --from=backend /app/bin/server /app/bin/
COPY --from=frontend /app/build/web /app/bin/build/web

# Start server.
EXPOSE 8080
CMD ["/app/bin/server"]
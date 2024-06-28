FROM dart:stable AS backend

WORKDIR /app
COPY ./pubspec.* ./
RUN dart pub get

COPY . .

RUN dart pub get --offline
RUN dart compile exe bin/server.dart -o bin/server

# Build minimal serving image from AOT-compiled `/server` and required system
# libraries and configuration files stored in `/runtime/` from the build stage.
FROM alpine:latest
COPY --from=backend /runtime/ /
COPY --from=backend /app/bin/server /app/bin/

# Start server.
EXPOSE 50051
CMD ["/app/bin/server"]
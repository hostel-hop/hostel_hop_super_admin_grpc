# Final stage with Envoy
FROM envoyproxy/envoy:v1.29.2

# Copy the Envoy configuration
COPY envoy.yaml /etc/envoy/envoy.yaml

EXPOSE 8080
EXPOSE 9901

# Start Envoy
CMD /usr/local/bin/envoy -c /etc/envoy/envoy.yaml
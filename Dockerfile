#ARG JAEGER_VERSION=latest
#FROM jaegertracing/all-in-one:${JAEGER_VERSION}

#EXPOSE 6831/udp
#EXPOSE 6832/udp
#EXPOSE 5778
#EXPOSE 16686
#EXPOSE 4317
#EXPOSE 4318
#EXPOSE 14250
#EXPOSE 14268
#EXPOSE 14269
#EXPOSE 9411

#ENV TZ="America/Argentina/Buenos_Aires"
#ENV COLLECTOR_OTLP_ENABLED="true"
#ENV SAMPLING_STRATEGIES_FILE=/etc/jaeger/sampling_strategies.json

ARG JAEGER_VERSION=latest
FROM jaegertracing/all-in-one:${JAEGER_VERSION}

EXPOSE 16686
EXPOSE 4317

ENV TZ="America/Argentina/Buenos_Aires"
CMD ["--reporter.grpc.host-port=:4317"]


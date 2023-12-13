FROM mcr.microsoft.com/cbl-mariner/distroless/minimal:2.0@sha256:450db4dc84c8c614f70d40abe5363d6788f50bc04221cb1d8437bb4d7753bd3f
ARG TARGETARCH
COPY ./_output/${TARGETARCH}/secrets-store-csi-driver-provider-azure /bin/

LABEL maintainers="aramase"
LABEL description="Secrets Store CSI Driver Provider Azure"

ENTRYPOINT ["secrets-store-csi-driver-provider-azure"]

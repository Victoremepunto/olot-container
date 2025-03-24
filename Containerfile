FROM registry.access.redhat.com/ubi9/python-312:9.5-1742197730

COPY olot .

# Install dependencies
RUN python3 -m pip install --no-cache-dir .

LABEL name="olot" \
      summary="OCI Layers On Top - tool to append layers (files) onto an OCI-compatible image" \
      com.redhat.component="olot" \
      description="OLOT - olot is a python-based tool to append layers (files) onto an OCI-compatible image. It is meant to be used in conjunction with command-line based tools to fetch and upload these images. Tools such as skopeo or oras" \
      io.k8s.display-name="olot" \
      io.k8s.description="olot is a python-based tool to append layers (files) onto an OCI-compatible image. It is meant to be used in conjunction with command-line based tools to fetch and upload these images. Tools such as skopeo or oras" \
      io.openshift.tags="oci"

ENTRYPOINT ["/opt/app-root/bin/olot"]

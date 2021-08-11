FROM quay.io/giantswarm/python:3.9-alpine3.13

RUN apk --no-cache add yaml-dev build-base git jq curl

RUN pip install pygithub GitPython python-dateutil click colored && \
    pip install --global-option='--with-libyaml' pyyaml

ENTRYPOINT ["python3"]

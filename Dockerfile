FROM quay.io/giantswarm/python:3.9-alpine3.13

RUN apk --no-cache add yaml-dev build-base git jq curl

ENV PYTHONUNBUFFERED=yes

RUN pip install \
        click \
        colored \
        GitPython \
        pygithub \
        python-dateutil \
    && pip install \
        --global-option='--with-libyaml' pyyaml

ENTRYPOINT ["python3"]

FROM quay.io/giantswarm/python:3.9-alpine3.13

RUN apk --no-cache add \
    build-base \
    curl \
    git \
    jq \
    libffi-dev \
    yaml-dev

ENV PYTHONUNBUFFERED=yes

RUN pip install --no-cache-dir \
        click==8.1.7 \
        colored==2.2.3 \
        GitPython==3.1.40 \
        PyGithub==2.1.1 \
        python-dateutil==2.8.2 \
    && pip install \
        --global-option='--with-libyaml' PyYAML==6.0.1

ENTRYPOINT ["python3"]

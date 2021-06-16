# SPDX-FileCopyrightText: 2020 Pier Luigi Fiorini <pierluigi.fiorini@liri.io>
#
# SPDX-License-Identifier: CC0-1.0

FROM alpine:latest

RUN apk add python3 py3-pip qt5-qtdeclarative-dev

ADD requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

ADD entrypoint /
ENTRYPOINT ["/entrypoint"]

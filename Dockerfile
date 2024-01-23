# SPDX-FileCopyrightText: 2020 Pier Luigi Fiorini <pierluigi.fiorini@liri.io>
#
# SPDX-License-Identifier: CC0-1.0

FROM alpine:latest

RUN apk add python3 py3-pip qt6-qtdeclarative-dev python3-dev build-base py3-pygithub

ADD entrypoint /
ENTRYPOINT ["/entrypoint"]

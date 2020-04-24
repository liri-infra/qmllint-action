<!--
SPDX-FileCopyrightText: 2020 Pier Luigi Fiorini <pierluigi.fiorini@liri.io>

SPDX-License-Identifier: CC0-1.0
-->

# qmllint-action

Verify if QML and JavaScript files are valid.

## Usage

To use this action, create a `.github/workflows/lint.yml` in your repository containing:

```yaml
name: Lint

on:
  push:
    branches:
      - develop
  pull_request:
    types:
      - assigned
      - opened
      - synchronize
      - reopened

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Validate QML and JavaScript files
        uses: liri-infra/qmllint-action@master
        env:
            GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

## Test

Test it from command line like this:

```sh
GITHUB_TOKEN=token
GITHUB_WORKSPACE=/path/to/project
GITHUB_REPOSITORY=owner/repo
GITHUB_SHA=abcdef...
./entrypoint
```

Replace `GITHUB_TOKEN`, `GITHUB_WORKSPACE`, `GITHUB_REPOSITORY`, `GITHUB_SHA` appropriately.

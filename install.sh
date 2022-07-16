#!/bin/bash
mv .hymn.mini.dev .hymn.dev
make set-install-mode-dev
make install-files-only
rm .hymn.normal.dev config/config.ini.* install.sh


#!/usr/bin/env bash
# shellcheck disable=SC2001,SC2002,SC2034,SC1090,SC2154,SC1117

# Fail fast and fail hard.
set -Eeuo pipefail

mkdir -p ~/.config/rclone/
echo "
[woocart]
type = webdav
pass = $(rclone obscure $INPUT_PASSWORD)
url = $INPUT_URL
user = $INPUT_USERNAME
vendor = other
" > ~/.config/rclone/rclone.conf

rclone -v sync $INPUT_LOCAL woocart:$INPUT_REMOTE
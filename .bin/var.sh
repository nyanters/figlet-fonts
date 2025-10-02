#!/usr/bin/env bash
set -euo pipefail
readonly FONT_DIR="$(dirname $(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P))"
if [[ "$(uname)" == "Darwin" ]]; then
  readonly MACOS_DST_BRANCH="/Cellar/figlet/2.2.5/share/figlet/fonts"
  if [[ "$(uname -m)" == "arm64" ]]; then
    readonly MACOS_DST_ROOT="/opt/homebrew"
  elif [[ "$(uname -m)" == "x86_64" ]]; then
    readonly MACOS_DST_ROOT="/usr/local"
  fi
  readonly DST_ROOT="${MACOS_DST_ROOT}${MACOS_DST_BRANCH}"
elif [[ "$(uname)" == "Linux" ]]; then
  readonly DST_ROOT="/usr/share/figlet/fonts"
fi
readonly DST="${DST_ROOT}/xero"
return 0

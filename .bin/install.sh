#!/usr/bin/env bash
set -euo pipefail
cd "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
source var.sh
readonly FONT_EXT=(.flc .flf)
mkdir -p "${DST}"
cd ${FONT_DIR}
for i in "${FONT_EXT[@]}"; do
  for j in *${i}; do
    if [[ ! -e "${DST}/${j}" ]]; then
      ln -s "${FONT_DIR}/${j}" "${DST}/${j}"
    fi
  done
done
exit 0

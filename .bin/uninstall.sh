#!/usr/bin/env bash
set -euo pipefail
cd "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
source var.sh
rm -rf ${DST}
exit 0

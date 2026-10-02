#!/bin/bash

set -euo pipefail

dry_run=${1:-}

cd $(dirname "${BASH_SOURCE[0]}")

rsync -vc --mkpath $dry_run ./files/_bashrc.d/* ~/.bashrc.d/
rsync -rvc --mkpath $dry_run ./files/_config/ ~/.config/

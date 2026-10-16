#!/usr/bin/env bash

set -euo pipefail

rm -rf ../math.eus_private/public/nihongo/*
mv build/web/* ../math.eus_private/public/nihongo/
sed -i 's#<base href="/">#<base href="/nihongo/">#' ../math.eus_private/public/nihongo/index.html

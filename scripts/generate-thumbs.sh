#!/usr/bin/env bash
set -euo pipefail

TARGET_WIDTH=360   # под двухколоночный случай

find plots -type f \( -iname '*.png' -o -iname '*.apng' \) ! -path '*/thumbs/*' | while read -r src; do
  dir=$(dirname "$src")     
  base=$(basename "$src")
  thumbdir="$dir/thumbs"        
  out="$thumbdir/${base%.*}.webp"
  mkdir -p "$thumbdir"

  if [[ "$base" == *.apng ]]; then
    # APNG -> lossless анимированный WebP, С уменьшением разрешения до TARGET_WIDTH
    # scale flags=area в ffmpeg - аналог Box в ImageMagick: усредняет блок пикселей,
    # не пропускает тонкие линии/паттерны при сильном downscale
    [[ -f "$out" && "$out" -nt "$src" && "$out" -nt "$0" ]] && { echo "skip: $src"; continue; }

    tmpdir=$(mktemp -d)
    ffmpeg -nostdin -y -loglevel error -i "$src" \
      -vf "scale=${TARGET_WIDTH}:-1:flags=area" \
      "$tmpdir/f_%04d.png" < /dev/null
    img2webp -near_lossless 20 -loop 0 -d 40 "$tmpdir"/f_*.png -o "$out"
    rm -rf "$tmpdir"

  else
    # Статичный PNG -> уменьшенный WebP, filter Box
    # (Point/nearest-neighbor рвёт тонкие линии сетки при сильном downscale - см. тест)
    [[ -f "$out" && "$out" -nt "$src" && "$out" -nt "$0" ]] && { echo "skip: $src"; continue; }

    magick "$src" -filter Box -resize "${TARGET_WIDTH}x" -strip "$out"
  fi

  echo "done: $src -> $out"
done
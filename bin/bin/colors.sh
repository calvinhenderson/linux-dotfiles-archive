#!/bin/sh
COLORS="$(grep -Eo '#[0-9A-Fa-f]{6}\b' | sort -u)"
NUM_COLORS=$(( ${#COLORS} / 7 ))
echo "Total colors: $NUM_COLORS"
ROWS=$(( NUM_COLORS / 8 ))
COLS=16
RAD=80
echo "Size: $(( COLS * RAD ))x$(( ROWS * RAD ))"

DRAW_ARGS=""

if [ $ROWS -eq 0 ]; then
  ROWS=1
fi

for Y in $(seq 0 $ROWS); do
  for X in $(seq 0 $COLS); do
    if [ -z "$COLORS" ]; then break; fi
    C=$(echo "$COLORS" | head -n 1 | sed 's/[^0-9A-Fa-f]//')
    T=$(echo "$C" | awk -F, '{ p1 = strtonum( "0x" substr( $1, 1, 2 ));
                               p2 = strtonum( "0x" substr( $1, 3, 2 ));
                               p3 = strtonum( "0x" substr( $1, 5, 2 ));
      printf "%d", (0.33 * p1) + (0.5 * p2) + (0.16 * p3);
    }')

    if [ "$T" -gt 100 ]; then
      LUM="#000"
    else
      LUM="#FFF"
    fi

    DRAW_ARGS="fill #$C rectangle $(( X * RAD )),$(( Y * RAD )) ${RAD},${RAD}
    fill $LUM text $(( X * RAD + 5 )),$(( Y * RAD + 10 )) '$C'
    $DRAW_ARGS"

    COLORS="$(echo "$COLORS" | tail -n +2)"
  done
done

convert -size "$(( COLS * RAD ))x$(( ROWS * RAD ))" xc:white -draw "$DRAW_ARGS" img.png #"palette_$(date +%Y%M%d_%H%M%S.png)"

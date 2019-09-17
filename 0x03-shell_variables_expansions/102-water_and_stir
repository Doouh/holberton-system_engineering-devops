#!/bin/bash
a=$(echo $WATER | tr water 01234); water_base10=$((5#$a)); b=$(echo $STIR | tr stir. 01234); stir_base10=$((5#$b)); c=$(printf "%o\n" $(($water_base10 + $stir_base10))); d=$(echo $c | tr 01234567 behlnort); echo $d

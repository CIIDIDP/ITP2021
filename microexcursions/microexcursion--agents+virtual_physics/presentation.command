#! /bin/bash

PRESENTATION_RELATIVE_DIRECTORY=../presentation
PORT=8000

# ---------------------------------------------------------------------------- #

BASEDIR=$(cd "$(dirname "$0")/"; pwd)
BASENAME=$(basename "$BASEDIR")
CSS_STYLE=ME--theme.css
PRES_DIR="$BASEDIR/$PRESENTATION_RELATIVE_DIRECTORY"
"$PRES_DIR"/start-presentation.sh ../"$BASENAME" "$PRES_DIR/$CSS_STYLE" $PORT

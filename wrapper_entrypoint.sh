#!/bin/sh

# Set up the arguments, omitting scope if it is not provided
args=""
args="$args --organisation $INPUT_ORGANISATION"
args="$args --project $INPUT_PROJECT"
args="$args --registry $INPUT_REGISTRY"
args="$args --user $INPUT_USER"
args="$args --password $INPUT_PASSWORD"
args="$args --email $INPUT_EMAIL"

# Only add scope if it's provided and not empty
if [ -n "$INPUT_SCOPE" ]; then
  args="$args --scope $INPUT_SCOPE"
fi

# Call the original Python script with the arguments
python3 /app/run.py $args

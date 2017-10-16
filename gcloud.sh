#!/bin/bash

export GOOGLE_APPLICATION_CREDENTIALS="<Value>"
export GCLOUD_PROJECT="<Value>"

arecord -t raw -c 1 -r 16000 -f S16_LE -d 5 tweet.raw
python speech-to-text.py tweet.raw

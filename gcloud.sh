#!/bin/bash

export GOOGLE_APPLICATION_CREDENTIALS="./My First Project-084816f2fb65.json"
export GCLOUD_PROJECT="eternal-tendril-178816"

arecord -t raw -c 1 -r 16000 -f S16_LE -d 5 tweet.raw
python speech-to-text.py tweet.raw

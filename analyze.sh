#!/bin/bash

./gen_prompt.sh > /dev/null 2>&1

/google_gemma-3-4b-it-Q6_K.llamafile \
  --cli \
  --log-disable \
  --silent-prompt \
  --temp 0 \
  -f calculator/prompt.txt \
  | fmt -w 80

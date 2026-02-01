#!/bin/bash
source .venv/bin/activate

aws s3 cp ~/Documents/videos/$1 s3://idbwmedia.com/podcasts/ \
    --profile wasabi \
    --endpoint-url=https://s3.us-west-1.wasabisys.com \
    --checksum-algorithm=CRC32

echo 'https://s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/'$1
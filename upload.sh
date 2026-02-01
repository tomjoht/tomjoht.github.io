#!/bin/bash
# Activate your virtual environment
source .venv/bin/activate

# Upload with Wasabi-specific flags``
aws s3 cp images/$1 s3://idbwmedia.com/images/ \
    --profile wasabi \
    --endpoint-url=https://s3.us-west-1.wasabisys.com \
    --checksum-algorithm=CRC32

echo '<figure><a href=""><img src="{{site.media}}/'$1'" alt="" /></a><figcaption>CAPTION</figcaption></figure>'
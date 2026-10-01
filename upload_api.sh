#!/bin/bash
# Activate virtual environment
source .venv/bin/activate

sips -m "/System/Library/ColorSync/Profiles/sRGB Profile.icc" images/api/$1

# Upload with Wasabi-specific flags
aws s3 cp images/api/$1 s3://idbwmedia.com/images/api/ \
    --profile wasabi \
    --endpoint-url=https://s3.us-west-1.wasabisys.com \
    --checksum-algorithm=CRC32

echo '<figure><a href=""><img src="{{site.api_media}}/'$1'" alt="" /></a><figcaption>CAPTION</figcaption></figure>'


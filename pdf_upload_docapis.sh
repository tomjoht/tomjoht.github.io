# Uploads the zipped API course PDFs to Wasabi. The Buy Me a Coffee download
# links to https://s3.us-west-1.wasabisys.com/learnapidoc-outputs/docapis.zip,
# so always overwrite that same key (overwrites are enabled on the bucket).
# The bucket has no versioning, so back up the old zip first, for example:
#   aws s3 cp s3://learnapidoc-outputs/docapis.zip s3://learnapidoc-outputs/docapis-YYYY-MM-DD.zip --profile wasabi --endpoint-url=https://s3.us-west-1.wasabisys.com
set -e
source .venv/bin/activate

aws s3 cp ~/projects/idratherbewriting/pdf/docapis.zip s3://learnapidoc-outputs \
    --profile wasabi \
    --endpoint-url=https://s3.us-west-1.wasabisys.com
echo 'done uploading'

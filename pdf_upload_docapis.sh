# Uploads pdf/docapis.zip to Wasabi, overwriting the same key that the
# Buy Me a Coffee product redirects to (overwrites are enabled on the bucket).
# The bucket, key, and URLs live in pdf.local.env, which is gitignored so
# the paid download URL doesn't appear in the public repo.
# The bucket has no versioning, so back up the old zip first (see the
# update-api-doc-pdf skill).
set -e
cd "$(dirname "$0")"
if [ ! -f pdf.local.env ]; then
  echo "Missing pdf.local.env. Copy pdf.local.env.example and fill in the real values."
  exit 1
fi
source pdf.local.env
source .venv/bin/activate

aws s3 cp pdf/docapis.zip "s3://$PDF_BUCKET/$PDF_KEY" \
    --profile wasabi \
    --endpoint-url="$PDF_ENDPOINT"
echo 'done uploading'

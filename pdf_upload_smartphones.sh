# Uploads the smartphones book zip to Wasabi. The bucket and key live in
# pdf.local.env, which is gitignored.
set -e
cd "$(dirname "$0")"
if [ ! -f pdf.local.env ]; then
  echo "Missing pdf.local.env. Copy pdf.local.env.example and fill in the real values."
  exit 1
fi
source pdf.local.env
source .venv/bin/activate

aws s3 cp pdf/journey_away_from_smartphones.zip "s3://$PDF_BUCKET/$SMARTPHONES_KEY" \
    --profile wasabi \
    --endpoint-url="$PDF_ENDPOINT"
echo 'done uploading'

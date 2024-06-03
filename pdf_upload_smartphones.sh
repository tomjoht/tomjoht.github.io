# Equivalent function
myvenv() {
    source .venv/bin/activate
}
myvenv

aws s3 cp ~/projects/idratherbewriting/pdf/journey_away_from_smartphones.zip s3://learnapidoc-outputs --profile wasabi

echo 'done uploading'
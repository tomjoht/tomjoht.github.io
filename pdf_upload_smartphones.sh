# Equivalent function
myvenv() {
    source /Users/tomjohnson/myvenv/bin/activate
}
myvenv

aws s3 cp ~/projects/idratherbewriting/pdf/journey_away_from_smartphones.zip s3://learnapidoc-outputs --profile wasabi

echo 'done uploading'
# Equivalent function
myvenv() {
    source /Users/tomjoht/myvenv/bin/activate
}
myvenv

aws s3 cp ~/projects/idratherbewriting/pdf/journey_away_from_smartphones.pdf s3://learnapidoc-outputs --profile wasabi

echo 'done uploading'
# Equivalent function
myvenv() {
    source /Users/tomjohnson/myvenv/bin/activate
}
myvenv

aws s3 cp ~/projects/idratherbewriting/pdf/zamm_reflections.pdf s3://learnapidoc-outputs --profile wasabi

echo 'done uploading'
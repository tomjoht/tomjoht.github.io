# Equivalent function
myvenv() {
    source .venv/bin/activate
}
myvenv

# aws s3 cp ~/projects/idratherbewriting/pdf/chapter1_docapis9541.pdf s3://learnapidoc-outputs --profile wasabi
# aws s3 cp ~/projects/idratherbewriting/pdf/chapter2_docapis5468.pdf s3://learnapidoc-outputs --profile wasabi
# aws s3 cp ~/projects/idratherbewriting/pdf/chapter3_docapis4043.pdf s3://learnapidoc-outputs --profile wasabi
# aws s3 cp ~/projects/idratherbewriting/pdf/chapter4_docapis9832.pdf s3://learnapidoc-outputs --profile wasabi
# aws s3 cp ~/projects/idratherbewriting/pdf/chapter5_docapis1349.pdf s3://learnapidoc-outputs --profile wasabi
# aws s3 cp ~/projects/idratherbewriting/pdf/chapter6_docapis9932.pdf s3://learnapidoc-outputs --profile wasabi
# aws s3 cp ~/projects/idratherbewriting/pdf/chapter7_docapis1256.pdf s3://learnapidoc-outputs --profile wasabi
# aws s3 cp ~/projects/idratherbewriting/pdf/chapter8_docapis9834.pdf s3://learnapidoc-outputs --profile wasabi
# aws s3 cp ~/projects/idratherbewriting/pdf/chapter9_docapis6721.pdf s3://learnapidoc-outputs --profile wasabi
# aws s3 cp ~/projects/idratherbewriting/pdf/chapter10_docapis9153.pdf s3://learnapidoc-outputs --profile wasabi
# aws s3 cp ~/projects/idratherbewriting/pdf/chapter11_docapis7834.pdf s3://learnapidoc-outputs --profile wasabi
# aws s3 cp ~/projects/idratherbewriting/pdf/chapter12_docapis8254.pdf s3://learnapidoc-outputs --profile wasabi
# aws s3 cp ~/projects/idratherbewriting/pdf/chapter13_docapis4431.pdf s3://learnapidoc-outputs --profile wasabi
# aws s3 cp ~/projects/idratherbewriting/pdf/chapter14_docapis2395.pdf s3://learnapidoc-outputs --profile wasabi
# aws s3 cp ~/projects/idratherbewriting/pdf/chapter15_docapis3757.pdf s3://learnapidoc-outputs --profile wasabi
# aws s3 cp ~/projects/idratherbewriting/pdf/chapter16_docapis8129.pdf s3://learnapidoc-outputs --profile wasabi
aws s3 cp ~/projects/idratherbewriting/pdf/docapis.zip s3://learnapidoc-outputs --profile wasabi
echo 'done uploading'
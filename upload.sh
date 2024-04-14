myvenv() {
    source .venv/bin/activate
}
myvenv
aws s3 cp ~/projects/idratherbewriting/images/$1 s3://idbwmedia.com/images/ --profile wasabi
# to run, store image in project's image folder
# then type this: . upload.sh image.png
echo '<figure><a href=""><img src="{{site.media}}/'$1'" alt="" /></a><figcaption>CAPTION</figcaption></figure>'

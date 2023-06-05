aws s3 cp ~/projects/idratherbewriting/images/$1 s3://idbwmedia.com/images/ --profile wasabi
# to run, store image in project's image folder
# then type this: . upload.sh image.png
echo '<a href=""><img src="{{site.media}}/'$1
echo '" alt="" /></a>'

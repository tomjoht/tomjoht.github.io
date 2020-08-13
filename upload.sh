myvenv
aws s3 cp ~/projects/idratherbewriting/images/$1 s3://idbwmedia.com/images/ --profile wasabi
# to run, store image in project's image folder
# then type this: . upload.sh image.png
echo '<a href=""><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/'$1
echo '" alt="" /></a>'
deactivate

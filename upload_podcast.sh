aws s3 cp ~/Documents/videos/$1 s3://idbwmedia.com/podcasts/ --profile wasabi
# to run, store image in project's image folder
# then type this: . upload.sh image.png
echo 'https://s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/'$1

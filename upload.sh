aws s3 cp ~/projects/idratherbewriting/images/$1 s3://idratherbewritingmedia.com/images/ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
# to run, store image in project's image folder
# then type this: . upload.sh image.png

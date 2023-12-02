alias myvenv="source /Users/tomjoht/myvenv/bin/activate"
myvenv

aws s3 cp ~/projects/idratherbewriting/images/zamm/$1 s3://idbwmedia.com/images/zamm/ --profile wasabi
# to run, store image in project's image folder
# then type this: . upload.sh image.png
echo '<a href=""><img src="{{site.media}}/zamm/'$1
echo '" alt="" /></a>'

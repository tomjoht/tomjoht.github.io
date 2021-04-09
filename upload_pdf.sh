# first run myvenv to go into the python virtual environment, then run deactivate to exit when finished
aws s3 cp ~/Documents/pdf_uploads/$1 s3://idbwmedia.com/print/ --profile wasabi
# to run, store image in project's image folder
# then type this: . upload_pdf.sh some_pdf.pdf
echo 'https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/'$1

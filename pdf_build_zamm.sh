echo "Zamm reflections series"
bundle exec jekyll build --config _config_pdf_zamm.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list-all.txt --no-warn-css-unsupported -o pdf/zamm_reflections.pdf;
echo "done building zamm reflections";
echo "now run ./pdf_upload_zamm_reflections.sh to upload it"
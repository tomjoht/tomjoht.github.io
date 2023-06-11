echo "Smartphone series"
bundle exec jekyll build --config _config_pdf_smartphones.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list-all.txt --no-warn-css-unsupported -o pdf/journey_away_from_smartphones.pdf;
echo "done building smartphones";
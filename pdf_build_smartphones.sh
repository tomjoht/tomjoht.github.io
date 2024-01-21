echo "Smartphone series"
bundle exec jekyll build --config _config_pdf_smartphones.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list-all.txt --no-warn-css-unsupported -o pdf/journey_away_from_smartphones_all_chapters.pdf;
echo "done building smartphones";



LOCATION="/Users/tomjohnson/projects/idratherbewriting/pdf"

echo "now splitting the comprehensive PDF up into individual chapters"
pdftk $LOCATION/journey_away_from_smartphones_all_chapters.pdf cat 1-3 output $LOCATION/frontmatter.pdf
pdftk $LOCATION/journey_away_from_smartphones_all_chapters.pdf cat 4-62 output $LOCATION/chapter1-awakening.pdf
pdftk $LOCATION/journey_away_from_smartphones_all_chapters.pdf cat 63-114 output $LOCATION/chapter2-wayfinding.pdf
pdftk $LOCATION/journey_away_from_smartphones_all_chapters.pdf cat 115-202 output $LOCATION/chapter3-flow.pdf
pdftk $LOCATION/journey_away_from_smartphones_all_chapters.pdf cat 203-227 output $LOCATION/chapter4-pushandpull.pdf

echo "Now zipping everything up"
zip pdf/journey_away_from_smartphones.zip pdf/readme_smartphones.txt pdf/frontmatter.pdf pdf/chapter1-awakening.pdf pdf/chapter2-wayfinding.pdf pdf/chapter3-flow.pdf pdf/chapter4-pushandpull.pdf pdf/journey_away_from_smartphones_all_chapters.pdf

echo "now run ./pdf_upload_smartphones.sh to upload it"
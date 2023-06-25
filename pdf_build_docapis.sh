echo "1: Introduction to REST APIs"
bundle exec jekyll build --config _config_pdf_one.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis9541_chapter_one.pdf;
echo "done building one";

echo "2: Using an API like a developer"
bundle exec jekyll build --config _config_pdf_two.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis5468_chapter_two.pdf;
echo "done building two";

echo "3: Documenting API endpoints"
bundle exec jekyll build --config _config_pdf_three.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis4043_chapter_three.pdf;
echo "done building three";

echo "4: OpenAPI spec and generated reference docs"
bundle exec jekyll build --config _config_pdf_four.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis9832_chapter_four.pdf;
echo "done building four";

echo "5: Step-by-step OpenAPI code tutorial"
bundle exec jekyll build --config _config_pdf_five.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis1349_chapter_five.pdf;
echo "done building five";

echo "6: Testing API docs"
bundle exec jekyll build --config _config_pdf_six.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis9932_chapter_six.pdf;
echo "done building six";

echo "7: Conceptual topics in API docs"
bundle exec jekyll build --config _config_pdf_seven.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis1256_chapter_seven.pdf;
echo "done building seven";

echo "8: Code tutorials"
bundle exec jekyll build --config _config_pdf_eight.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis9834_chapter_eight.pdf;
echo "done building eight";

echo "9: The writing process"
bundle exec jekyll build --config _config_pdf_nine.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis6721_chapter_nine.pdf;
echo "done building nine";

echo "10: Publishing API docs"
bundle exec jekyll build --config _config_pdf_ten.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis9153_chapter_ten.pdf;
echo "done building ten";

echo "11: Thriving in the API doc space"
bundle exec jekyll build --config _config_pdf_eleven.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis7834_chapter_eleven.pdf;
echo "done building eleven";

echo "12: Native library APIs"
bundle exec jekyll build --config _config_pdf_twelve.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis8254_chapter_twelve.pdf;
echo "done building twelve";

echo "13: Processes and methodology"
bundle exec jekyll build --config _config_pdf_thirteen.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis4431_chapter_thirteen.pdf;
echo "done building thirteen";

echo "14: Metrics and measurement"
bundle exec jekyll build --config _config_pdf_fourteen.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis2395_chapter_fourteen.pdf;
echo "done building fourteen";

echo "15: Additional resources"
bundle exec jekyll build --config _config_pdf_fifteen.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis8129_chapter_fifteen.pdf;
echo "done building fifteen";


echo "Compress all individual PDFs into one zip file"
zip pdf/docapis7428_all.zip pdf/docapis9541_chapter_one.pdf pdf/docapis5468_chapter_two.pdf pdf/docapis4043_chapter_three.pdf pdf/docapis9832_chapter_four.pdf pdf/docapis1349_chapter_five.pdf pdf/docapis9932_chapter_six.pdf pdf/docapis1256_chapter_seven.pdf pdf/docapis9834_chapter_eight.pdf pdf/docapis6721_chapter_nine.pdf pdf/docapis9153_chapter_ten.pdf pdf/docapis7834_chapter_eleven.pdf pdf/docapis8254_chapter_twelve.pdf pdf/docapis4431_chapter_thirteen.pdf pdf/docapis2395_chapter_fourteen.pdf pdf/docapis8129_chapter_fifteen.pdf
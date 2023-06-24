echo "1: Introduction to REST APIs"
bundle exec jekyll build --config _config_pdf_one.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis9541_one.pdf;
echo "done building one";

echo "2: Using an API like a developer"
bundle exec jekyll build --config _config_pdf_two.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis5468_two.pdf;
echo "done building two";

echo "3: Documenting API endpoints"
bundle exec jekyll build --config _config_pdf_three.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis4043_three.pdf;
echo "done building three";

echo "4: OpenAPI spec and generated reference docs"
bundle exec jekyll build --config _config_pdf_four.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis9832_four.pdf;
echo "done building four";

echo "5: Step-by-step OpenAPI code tutorial"
bundle exec jekyll build --config _config_pdf_five.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis1349_five.pdf;
echo "done building five";

echo "6: Testing API docs"
bundle exec jekyll build --config _config_pdf_six.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis9932_six.pdf;
echo "done building six";

echo "7: Conceptual topics in API docs"
bundle exec jekyll build --config _config_pdf_seven.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis1256_seven.pdf;
echo "done building seven";

echo "8: Code tutorials"
bundle exec jekyll build --config _config_pdf_eight.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis9834_eight.pdf;
echo "done building eight";

echo "9: The writing process"
bundle exec jekyll build --config _config_pdf_nine.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis6721_nine.pdf;
echo "done building nine";

echo "10: Publishing API docs"
bundle exec jekyll build --config _config_pdf_ten.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis9153_ten.pdf;
echo "done building ten";

echo "11: Thriving in the API doc space"
bundle exec jekyll build --config _config_pdf_eleven.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis7834_eleven.pdf;
echo "done building eleven";

echo "12: Native library APIs"
bundle exec jekyll build --config _config_pdf_twelve.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis8254_twelve.pdf;
echo "done building twelve";

echo "13: Processes and methodology"
bundle exec jekyll build --config _config_pdf_thirteen.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis4431_thirteen.pdf;
echo "done building thirteen";

echo "14: Metrics and measurement"
bundle exec jekyll build --config _config_pdf_fourteen.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis2395_fourteen.pdf;
echo "done building fourteen";

echo "15: Additional resources"
bundle exec jekyll build --config _config_pdf_fifteen.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis8129_fifteen.pdf;
echo "done building fifteen";

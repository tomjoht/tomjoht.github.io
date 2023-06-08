echo "I: Introduction to REST APIs"
bundle exec jekyll build --config _config_pdf_one.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis_one.pdf;
echo "done building one";

echo "II: Using an API like a developer"
bundle exec jekyll build --config _config_pdf_two.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis_two.pdf;
echo "done building two";

echo "III: Documenting API endpoints"
bundle exec jekyll build --config _config_pdf_three.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis_three.pdf;
echo "done building three";

echo "IV: OpenAPI spec and generated reference docs"
bundle exec jekyll build --config _config_pdf_four.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis_four.pdf;
echo "done building four";

echo "V: Step-by-step OpenAPI code tutorial"
bundle exec jekyll build --config _config_pdf_five.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis_five.pdf;
echo "done building five";

echo "VI: Testing API docs"
bundle exec jekyll build --config _config_pdf_six.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis_six.pdf;
echo "done building six";

echo "VII: Conceptual topics in API docs"
bundle exec jekyll build --config _config_pdf_seven.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis_seven.pdf;
echo "done building seven";

echo "VIII: Code tutorials"
bundle exec jekyll build --config _config_pdf_eight.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis_eight.pdf;
echo "done building eight";

echo "IX: The writing process"
bundle exec jekyll build --config _config_pdf_nine.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis_nine.pdf;
echo "done building nine";

echo "X: Publishing API docs"
bundle exec jekyll build --config _config_pdf_ten.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis_ten.pdf;
echo "done building ten";

echo "XI: Thriving in the API doc space"
bundle exec jekyll build --config _config_pdf_eleven.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis_eleven.pdf;
echo "done building eleven";

echo "XII: Native library APIs"
bundle exec jekyll build --config _config_pdf_twelve.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis_twelve.pdf;
echo "done building twelve";

echo "XIII: Processes and methodology"
bundle exec jekyll build --config _config_pdf_thirteen.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis_thirteen.pdf;
echo "done building thirteen";

echo "XIV: Metrics and measurement"
bundle exec jekyll build --config _config_pdf_fourteen.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis_fourteen.pdf;
echo "done building fourteen";

echo "XV: Additional resources"
bundle exec jekyll build --config _config_pdf_fifteen.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/docapis_fifteen.pdf;
echo "done building fifteen";

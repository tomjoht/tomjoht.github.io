echo "1: Introduction to REST APIs"
bundle exec jekyll build --config _config_pdf_one.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter1_docapis9541.pdf;
echo "done building one";

echo "2: Using an API like a developer"
bundle exec jekyll build --config _config_pdf_two.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter2_docapis5468.pdf;
echo "done building two";

echo "3: Documenting API endpoints"
bundle exec jekyll build --config _config_pdf_three.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter3_docapis4043.pdf;
echo "done building three";

echo "4: OpenAPI spec and generated reference docs"
bundle exec jekyll build --config _config_pdf_four.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter4_docapis9832.pdf;
echo "done building four";

echo "5: Step-by-step OpenAPI code tutorial"
bundle exec jekyll build --config _config_pdf_five.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter5_docapis1349.pdf;
echo "done building five";

echo "6: Testing API docs"
bundle exec jekyll build --config _config_pdf_six.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter6_docapis9932.pdf;
echo "done building six";

echo "7: Conceptual topics in API docs"
bundle exec jekyll build --config _config_pdf_seven.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter7_docapis1256.pdf;
echo "done building seven";

echo "8: Code tutorials"
bundle exec jekyll build --config _config_pdf_eight.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter8_docapis9834.pdf;
echo "done building eight";

echo "9: The writing process"
bundle exec jekyll build --config _config_pdf_nine.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter9_docapis6721.pdf;
echo "done building nine";

echo "10: Publishing API docs"
bundle exec jekyll build --config _config_pdf_ten.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter10_docapis9153.pdf;
echo "done building ten";

echo "11: Thriving in the API doc space"
bundle exec jekyll build --config _config_pdf_eleven.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter11_docapis7834.pdf;
echo "done building eleven";

echo "12: Native library APIs"
bundle exec jekyll build --config _config_pdf_twelve.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter12_docapis8254.pdf;
echo "done building twelve";

echo "13: Processes and methodology"
bundle exec jekyll build --config _config_pdf_thirteen.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter13_docapis4431.pdf;
echo "done building thirteen";

echo "14: Metrics and measurement"
bundle exec jekyll build --config _config_pdf_fourteen.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter14_docapis2395.pdf;
echo "done building fourteen";

echo "15: AI and API documentation"
bundle exec jekyll build --config _config_pdf_fifteen.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter15_docapis3757.pdf;
echo "done building fifteen";

echo "16: Additional resources"
bundle exec jekyll build --config _config_pdf_sixteen.yml --limit_posts 1;
echo "the PDF ...";
prince --javascript --input-list=_site/prince-list.txt --no-warn-css-unsupported -o pdf/chapter16_docapis8129.pdf;
echo "done building sixteen";


echo "Compress all individual PDFs into one zip file"
zip pdf/all_chapters.zip pdf/chapter1_docapis9541.pdf pdf/chapter2_docapis5468.pdf pdf/chapter3_docapis4043.pdf pdf/chapter4_docapis9832.pdf pdf/chapter5_docapis1349.pdf pdf/chapter6_docapis9932.pdf pdf/chapter7_docapis1256.pdf pdf/chapter8_docapis9834.pdf pdf/chapter9_docapis6721.pdf pdf/chapter10_docapis9153.pdf pdf/chapter11_docapis7834.pdf pdf/chapter12_docapis8254.pdf pdf/chapter13_docapis4431.pdf pdf/chapter14_docapis2395.pdf chapter15_docapis3757.pdf pdf/chapter16_docapis8129.pdf

echo "All done. Now run ./pdf_upload_docapis.sh"
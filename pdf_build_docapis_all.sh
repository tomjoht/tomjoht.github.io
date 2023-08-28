echo "Build the entire output"
bundle exec jekyll build --config configs/_config_pdf_all.yml --limit_posts 1;
echo "Building the PDF ...";
prince --javascript --input-list=_site/prince-list-all.txt --no-warn-css-unsupported -o pdf/docapis_all_chapters.pdf;
echo "done building the single comprehensive PDF";

LOCATION="/Users/tomjoht/projects/idratherbewriting/pdf"

echo "now splitting the comprehensive PDF up into individual chapters"
pdftk $LOCATION/docapis_all_chapters.pdf cat 1-8 output $LOCATION/frontmatter.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 9-71 output $LOCATION/chapter1_introduction_to_rest_apis.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 72-121 output $LOCATION/chapter2_using_an_api_like_a_developer.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 122-186 output $LOCATION/chapter3_documenting_api_endpoints.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 187-278 output $LOCATION/chapter4_openapi_spec_and_generated_reference_docs.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 279-349 output $LOCATION/chapter5_step_by_step_openapi_code_tutorial.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 350-365 output $LOCATION/chapter6_testing_api_docs.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 366-439 output $LOCATION/chapter7_conceptual_topics_in_api_docs.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 440-508 output $LOCATION/chapter8_code_tutorials.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 509-537 output $LOCATION/chapter9_the_writing_process.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 538-666 output $LOCATION/chapter10_publishing_api_docs.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 667-698 output $LOCATION/chapter11_thriving_in_the_api_doc_space.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 699-734 output $LOCATION/chapter12_native_library_apis.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 735-807 output $LOCATION/chapter13_processes_and_methodology.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 808-833 output $LOCATION/chapter14_metrics_and_measurement.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 834-899 output $LOCATION/chapter15_ai_and_api_docs.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 900-963 output $LOCATION/chapter16_additional_resources.pdf

echo "Now zipping everything up"
zip pdf/docapis.zip pdf/readme.txt pdf/docapis_all_chapters.pdf pdf/frontmatter.pdf pdf/chapter1_introduction_to_rest_apis.pdf pdf/chapter2_using_an_api_like_a_developer.pdf pdf/chapter3_documenting_api_endpoints.pdf pdf/chapter4_openapi_spec_and_generated_reference_docs.pdf pdf/chapter5_step_by_step_openapi_code_tutorial.pdf pdf/chapter6_testing_api_docs.pdf pdf/chapter7_conceptual_topics_in_api_docs.pdf pdf/chapter8_code_tutorials.pdf pdf/chapter9_the_writing_process.pdf pdf/chapter10_publishing_api_docs.pdf pdf/chapter11_thriving_in_the_api_doc_space.pdf pdf/chapter12_native_library_apis.pdf pdf/chapter13_processes_and_methodology.pdf pdf/chapter14_metrics_and_measurement.pdf pdf/chapter15_ai_and_api_docs.pdf pdf/chapter16_additional_resources.pdf

echo "All done. Now run ./pdf_upload_docapis.sh"
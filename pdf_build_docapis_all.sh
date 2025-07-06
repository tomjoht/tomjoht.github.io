echo "Build the entire output"
bundle exec jekyll build --config configs/_config_pdf_all.yml --limit_posts 1;
echo "Building the PDF ...";
prince --javascript --input-list=_site/prince-list-all.txt --no-warn-css-unsupported -o pdf/docapis_all_chapters.pdf;
echo "done building the single comprehensive PDF";

LOCATION="/Users/tomjohnson/projects/idratherbewriting/pdf"

echo "now splitting the comprehensive PDF up into individual chapters"
pdftk $LOCATION/docapis_all_chapters.pdf cat 1-8 output $LOCATION/frontmatter.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 9-33 output $LOCATION/chapter0_course_overview.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 34-67 output $LOCATION/chapter1_introduction_to_rest_apis.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 68-117 output $LOCATION/chapter2_using_an_api_like_a_developer.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 118-177 output $LOCATION/chapter3_documenting_api_endpoints.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 178-269 output $LOCATION/chapter4_openapi_spec_and_generated_reference_docs.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 270-341 output $LOCATION/chapter5_step_by_step_openapi_code_tutorial.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 342-360 output $LOCATION/chapter6_testing_api_docs.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 361-434 output $LOCATION/chapter7_conceptual_topics_in_api_docs.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 435-505 output $LOCATION/chapter8_code_tutorials.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 506-535 output $LOCATION/chapter9_the_writing_process.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 536-602 output $LOCATION/chapter10_publishing_api_docs.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 603-669 output $LOCATION/chapter11_publishing_tools.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 670-701 output $LOCATION/chapter12_thriving_in_the_api_doc_space.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 702-739 output $LOCATION/chapter13_native_library_apis.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 740-821 output $LOCATION/chapter14_processes_and_methodology.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 822-849 output $LOCATION/chapter15_metrics_and_measurement.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 850-888 output $LOCATION/chapter16_glossary.pdf
pdftk $LOCATION/docapis_all_chapters.pdf cat 889-950 output $LOCATION/chapter17_additional_resources.pdf

echo "Now zipping everything up"
zip pdf/docapis.zip pdf/readme_docs.txt pdf/docapis_all_chapters.pdf pdf/frontmatter.pdf pdf/chapter0_course_overview.pdf pdf/chapter1_introduction_to_rest_apis.pdf pdf/chapter2_using_an_api_like_a_developer.pdf pdf/chapter3_documenting_api_endpoints.pdf pdf/chapter4_openapi_spec_and_generated_reference_docs.pdf pdf/chapter5_step_by_step_openapi_code_tutorial.pdf pdf/chapter6_testing_api_docs.pdf pdf/chapter7_conceptual_topics_in_api_docs.pdf pdf/chapter8_code_tutorials.pdf pdf/chapter9_the_writing_process.pdf pdf/chapter10_publishing_api_docs.pdf pdf/chapter11_publishing_tools.pdf pdf/chapter12_thriving_in_the_api_doc_space.pdf pdf/chapter13_native_library_apis.pdf pdf/chapter14_processes_and_methodology.pdf pdf/chapter15_metrics_and_measurement.pdf pdf/chapter16_glossary.pdf pdf/chapter17_additional_resources.pdf

echo "All done. Now run ./pdf_upload_docapis.sh"
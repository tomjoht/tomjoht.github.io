set -e
mkdir -p pdf

echo "Build the entire output"
bundle exec jekyll build --config configs/_config_pdf_all.yml --limit_posts 1;
echo "Building the PDF ...";
prince --javascript --input-list=_site/prince-list-all.txt --no-warn-css-unsupported -o pdf/docapis_all_chapters.pdf;
echo "done building the single comprehensive PDF";

echo "now splitting the comprehensive PDF up into individual chapters"
python3 pdf_split_chapters.py pdf/docapis_all_chapters.pdf

echo "Now zipping everything up"
rm -f pdf/docapis.zip
zip pdf/docapis.zip pdf/readme_docs.txt pdf/docapis_all_chapters.pdf pdf/frontmatter.pdf pdf/chapter0_course_overview.pdf pdf/chapter1_introduction_to_rest_apis.pdf pdf/chapter2_using_an_api_like_a_developer.pdf pdf/chapter3_documenting_api_endpoints.pdf pdf/chapter4_openapi_spec_and_generated_reference_docs.pdf pdf/chapter5_step_by_step_openapi_code_tutorial.pdf pdf/chapter6_testing_api_docs.pdf pdf/chapter7_conceptual_topics_in_api_docs.pdf pdf/chapter8_code_tutorials.pdf pdf/chapter9_the_writing_process.pdf pdf/chapter10_publishing_api_docs.pdf pdf/chapter11_publishing_tools.pdf pdf/chapter12_thriving_in_the_api_doc_space.pdf pdf/chapter13_native_library_apis.pdf pdf/chapter14_processes_and_methodology.pdf pdf/chapter15_metrics_and_measurement.pdf pdf/chapter16_glossary.pdf pdf/chapter17_additional_resources.pdf

echo "All done. Now run ./pdf_upload_docapis.sh"
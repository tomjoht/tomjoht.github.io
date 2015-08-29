echo "Building Docapis PDF-friendly Site ..."
jekyll serve --config configs/config_docapis_pdf.yml
echo "done"

echo "Building Docapis PDF ..."
prince --javascript --input-list=../docapis-pdf/prince-file-list.txt -o /Users/tjohnson/projects/apiworkshop/docapis.pdf;
echo "done"
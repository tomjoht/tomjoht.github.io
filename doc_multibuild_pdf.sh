# Documenting REST APIs PDF
echo "Building the Documenting REST APIs PDF..."
prince --javascript --input-list=../documenting-rest-apis-pdf/prince-file-list.txt -o ../documenting-rest-apis.pdf;

# Publishing API documentation PDF
echo "Building the publishing API documentation PDF..."
prince --javascript --input-list=../publishing-rest-api-documentation-pdf/prince-file-list.txt -o ../publishing-rest-api-documentation.pdf;

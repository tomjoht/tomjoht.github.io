echo 'Killing all Jekyll instances'
kill -9 $(ps aux | grep '[j]ekyll' | awk '{print $2}')
clear

# serve all di print deliverables

# Documenting REST APIs PDF
echo "Documenting REST APIs PDF"
jekyll serve --detach --config configs/config_docapis_pdf.yml

# Publishing REST APIs documentation PDF
# echo "Publishing REST APIs documentation PDF"
# jekyll serve --detach --config configs/config_pubapis_pdf.yml

echo "All done."
echo "Now run . doc_multibuild_pdf.sh"

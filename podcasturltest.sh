> podcasturlsoutput.txt

while read -r url; do
    response=$(curl -I "$url" 2>/dev/null | grep "HTTP/")
    echo "$url - $response" >> podcasturlsoutput.txt
done < podcasturls.txt
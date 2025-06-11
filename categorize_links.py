import re

urls_string = "{{site.api_media}}/restapi_apidoc.svg,docapis_what_is_a_rest_api.html,likeadeveloper.html,docendpoints.html,docapis_resource_descriptions.html,docapis_resource_endpoints.html,docapis_doc_parameters.html,docapis_doc_sample_requests.html,docapis_doc_sample_responses_and_schema.html,docconceptual.html,docapis_doc_getting_started_section.html,docapis_doc_overview.html,docapis_doc_status_codes.html,docapis_more_about_authorization.html,publishingapis.html,pubapis_github_wikis.html,pubapis_jekyll.html,pubapis_docs_as_code.html,pubapis_version_control.html,pubapis_openapi_tutorial_overview.html,pubapis_openapi_intro.html,nativelibraryapis.html,nativelibraryapis_create_javadoc.html,docapis_managing_doc_processes.html,docapis_managing_doc_projects.html,docapis_managing_small_doc_requests.html,docapis_collecting_feedback_post_release.html,docapis_status_reports.html,docapis_measuring_impact.html,docapis_quality_checklist.html,{{folder.landing | remove: \"/learnapidoc/\"}},https://www.buymeacoffee.com/learnapidoc/e/146076,https://claude.ai,docapis_scenario_for_using_weather_api.html,workshop.html,https://www.reddit.com/r/technicalwriting/comments/ropvtx/has_anyone_here_completed_the_idratherbewriting/,docapis_find_open_source_project.html,jobapis.html,https://idratherbewriting.com/javascript/,http://www.sublimetext.com/,https://code.visualstudio.com/,https://atom.io/,https://notepad-plus-plus.org/,https://www.google.com/chrome/browser/desktop/index.html,https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en,http://www.getpostman.com/,http://curl.haxx.se/,http://confusedbycode.com/curl,https://git-scm.com/,https://gitforwindows.org/,https://git-scm.com/download/mac,https://github.com,https://stoplight.io/welcome,https://openweathermap.org/,https://api.openweathermap.org/data/2.5/weather?zip=95050&units=imperial&appid=126cac1a482f51de0f1287b45ae2bf9a,docapis_course_videos.html,https://idratherbewriting.com/presentations/,https://github.com/hakimel/reveal.js/,https://idratherbewriting.com/contact/,https://idratherbewriting.com/advertising,https://idratherbewriting.com/newsletter,https://www.docsgeek.io/mastering-api-documentation-course,https://www.cherryleaf.com/training-courses/documenting-apis-training-course/,https://cherryleaf.teachable.com/courses/advanced-technical-communication/lectures/37419185,https://www.udemy.com/user/petergruenbaum/,https://sdkbridge.com/,https://chrischinchilla.com/books/#technical-writing-for-software-developers,https://www.amazon.com/Docs-Like-Code-Anne-Gentle/dp/1365816079,https://www.amazon.com/Design-Web-APIs-Arnaud-Lauret/dp/1617295108,https://www.apress.com/gp/book/9781484272169,https://www.google.com/books/edition/Standards_and_Guidelines_for_API_Documen/B7LDzQEACAAJ?hl=en,https://www.amazon.com/Modern-Technical-Writing-Introduction-Documentation-ebook/dp/B01A2QL9SS,https://www.writethedocs.org/guide/index.html,https://www.amazon.com/Every-Page-One-Topic-Based-Communication/dp/1937434281,https://www.amazon.com/Product-Docs-technical-documentation-development/dp/1973589400,https://thegooddocsproject.dev/,https://developers.google.com/tech-writing,https://www.writethedocs.org/books/"

# Split the input string into a list of URLs
url_list = sorted(list(set(urls_string.split(','))))

internal_links = []
external_links = []
liquid_tags = []
mailto_links = []
other_special_links = []

# Regex for Liquid tags (e.g., {{ site.data.alerts.tip }})
# This will match anything that contains {{ and }}
liquid_tag_pattern = re.compile(r"\{\{.*\}\}")

# Regex for internal links (relative paths, not starting with http/https/mailto/{{)
simple_relative_path_pattern = re.compile(r"^[./]*([\w.-]+/)*[\w.-]+(\.html)?$")


for url in url_list:
    if liquid_tag_pattern.search(url): # Check if the url contains a liquid tag pattern
        liquid_tags.append(url)
    elif url.startswith("http://") or url.startswith("https://"):
        external_links.append(url)
    elif url.startswith("mailto:"):
        mailto_links.append(url)
    # Check for relative paths (common for internal links)
    elif simple_relative_path_pattern.match(url) or \
         (not url.startswith("http") and \
          not url.startswith("mailto:") and \
          ("." in url or "/" in url or url.isalnum() and not url.isnumeric())): # Heuristic for relative paths
        internal_links.append(url)
    else:
        other_special_links.append(url) # Catch anything that doesn't fit other categories

print(f"Internal Links: {sorted(internal_links)}")
print(f"External Links: {sorted(external_links)}")
print(f"Liquid Tags: {sorted(liquid_tags)}")
print(f"Mailto Links: {sorted(mailto_links)}")
print(f"Other Special Links: {sorted(other_special_links)}")

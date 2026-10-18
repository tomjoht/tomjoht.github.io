"""Split the comprehensive API course PDF into one PDF per chapter.

Reads the chapter start pages from the PDF bookmarks (Prince creates a
top-level bookmark for each "Chapter N: ..." page title), so page ranges
never need to be updated by hand.

Usage: python3 pdf_split_chapters.py pdf/docapis_all_chapters.pdf
"""
import re
import subprocess
import sys
from pathlib import Path

# Output file names, indexed by chapter number. Chapter 0 is the course overview.
CHAPTERS = [
    "chapter0_course_overview",
    "chapter1_introduction_to_rest_apis",
    "chapter2_using_an_api_like_a_developer",
    "chapter3_documenting_api_endpoints",
    "chapter4_openapi_spec_and_generated_reference_docs",
    "chapter5_step_by_step_openapi_code_tutorial",
    "chapter6_testing_api_docs",
    "chapter7_conceptual_topics_in_api_docs",
    "chapter8_code_tutorials",
    "chapter9_the_writing_process",
    "chapter10_publishing_api_docs",
    "chapter11_publishing_tools",
    "chapter12_thriving_in_the_api_doc_space",
    "chapter13_native_library_apis",
    "chapter14_processes_and_methodology",
    "chapter15_metrics_and_measurement",
    "chapter16_glossary",
    "chapter17_additional_resources",
]


def main(pdf_path):
    pdf = Path(pdf_path)
    data = subprocess.run(
        ["pdftk", str(pdf), "dump_data_utf8"], capture_output=True, text=True, check=True
    ).stdout
    total = int(re.search(r"NumberOfPages: (\d+)", data).group(1))
    bookmarks = re.findall(
        r"BookmarkBegin\nBookmarkTitle: (.*)\nBookmarkLevel: (\d+)\nBookmarkPageNumber: (\d+)", data
    )

    starts = {}
    for title, level, page in bookmarks:
        if level != "1":
            continue
        match = re.match(r"Chapter (\d+):", title)
        if match:
            starts.setdefault(int(match.group(1)), int(page))
        elif title.strip() == "Course overview":
            starts.setdefault(0, int(page))

    missing = [n for n in range(len(CHAPTERS)) if n not in starts]
    if missing:
        sys.exit(f"Couldn't find bookmarks for chapters: {missing}. Check the chapter page titles.")
    order = [starts[n] for n in range(len(CHAPTERS))]
    if order != sorted(order):
        sys.exit(f"Chapter start pages are out of order: {starts}. A page title might start with the wrong chapter number.")

    ranges = [("frontmatter", 1, starts[0] - 1)]
    for n, name in enumerate(CHAPTERS):
        end = starts[n + 1] - 1 if n + 1 < len(CHAPTERS) else total
        ranges.append((name, starts[n], end))

    for name, first, last in ranges:
        out = pdf.parent / f"{name}.pdf"
        subprocess.run(["pdftk", str(pdf), "cat", f"{first}-{last}", "output", str(out)], check=True)
        print(f"{name}: pages {first}-{last}")


if __name__ == "__main__":
    main(sys.argv[1] if len(sys.argv) > 1 else "pdf/docapis_all_chapters.pdf")

import os


def get_title(md_path: str) -> str:
    """Extracts the first line of the markdown file as the title, stripping headers."""
    try:
        with open(md_path, encoding="utf-8") as f:
            first_line = f.readline().strip()
            # Remove markdown header symbols (#) if present
            if first_line.startswith("#"):
                first_line = first_line.lstrip("#").strip()
            return first_line if first_line else os.path.basename(md_path)
    except Exception:
        return os.path.basename(md_path)


def generate_markdown_table() -> str:
    """Generates Markdown table"""
    table = ""
    for dirtype in os.listdir("./partituren"):
        table += f"""## {dirtype} \n\n | # | Title | Lyrics | Score | MIDI |
            \n| :--- | :--- | :---: | :---: | :---: |\n"""
        rows = []
        for root, dirs, files in os.walk(f"./partituren/{dirtype}"):
            md_files = [f for f in files if f.endswith(".md") and f.lower() != "readme.md"]
            mid_files = [f for f in files if f.endswith(".mid")]
            pdf_files = [f for f in files if f.endswith(".pdf")]

            if md_files or mid_files or pdf_files:
                try:
                    md_path = os.path.join(root, md_files[0])
                    title = get_title(md_path)
                    md_link = f"[Lyrics]({os.path.relpath(md_path, '.').replace(os.sep, '/')})"
                except IndexError:
                    title = " "
                    md_link = " "

                try:
                    mid_path = os.path.join(root, mid_files[0])
                    mid_link = f"[Midi]({os.path.relpath(mid_path, '.').replace(os.sep, '/')})"
                except IndexError:
                    mid_link = " "

                try:
                    pdf_path = os.path.join(root, pdf_files[0])
                    pdf_link = f"[Pdf]({os.path.relpath(pdf_path, '.').replace(os.sep, '/')})"
                except IndexError:
                    pdf_link = " "
                rows.append([title, md_link, pdf_link, mid_link])

        rows.sort(key=lambda x: x[0].lower())
        for i, item in enumerate(rows):
            # item= title, md_l, pdf_l, mid_l
            table += f"| {i + 1} | **{item[0]}** | {item[1]} | {item[2]} | {item[3]} |\n"
        table += "\n" * 2
    return table


def write_contents_table_to_readme() -> None:
    table_content = generate_markdown_table()

    readme_path = "README.md"
    if os.path.exists(readme_path):
        with open(readme_path, encoding="utf-8") as f:
            content = f.read()

        start_tag = "<!-- TABLE_START -->"
        end_tag = "<!-- TABLE_END -->"

        if start_tag in content and end_tag in content:
            before = content.split(start_tag)[0]
            after = content.split(end_tag)[1]
            new_content = before + start_tag + "\n\n" + table_content + "\n" + end_tag + after
            with open(readme_path, "w", encoding="utf-8") as f:
                f.write(new_content)
            print("Successfully updated README.md table!")
        else:
            print("Error: <!-- TABLE_START --> or <!-- TABLE_END --> markers not found in README.md.")
    else:
        print("README.md not found in the root directory.")


def add_html_tags_to_md(file: str) -> None:
    val = '<pre style="font-family: inherit; white-space: pre-wrap;">'

    with open(file, encoding="utf-8") as f:
        lines = f.readlines()
    if not any([val in x for x in lines]):
        print(f"adding html tags to {file}")
        start_lyrics = ["" == x.strip() for x in lines[1:]].index(False) + 1
        new_lines = [lines[0], val + "\n", *lines[start_lyrics:], "\n</pre>"]
        with open(file, "w", encoding="utf-8") as f:
            f.write("".join(new_lines))


def add_html_tags_to_mds() -> None:
    for root, dirs, files in os.walk("./partituren"):
        md_files = [f for f in files if f.endswith(".md") and f.lower() != "readme.md"]
        if md_files:
            add_html_tags_to_md(os.path.join(root, md_files[0]))


if __name__ == "__main__":
    add_html_tags_to_mds()
    write_contents_table_to_readme()

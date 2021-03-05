import std.stdio;

import html;

void main() {
    A tag = new A();
        tag.ID = "hyperlink";
        tag.Class = "red-link no-underline";
        tag.Href = "https://www.google.com";
        tag.Text = "Google";
    writeln(tag);
}
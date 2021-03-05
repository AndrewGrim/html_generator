module html;

import std.format;
import std.range;
import std.exception;

/// Abstract base class for an HTML tag.
class Tag {
    public:
        abstract override string toString() const;

        string ID = "";
        string Class = "";
        // Note: Text is not used by all tags!
        string Text = "";
        string Indentation = "    ";

        auto append(Tag tag) {
            tag._depth += 1;
            children ~= tag;
            return this;
        }
    
    protected:
        Tag[] children;
        int _depth = 0;
        string _id = "";
        string _class = "";
        
        string depth(int depth, string text) const {
            string depth_string = "";
            foreach (i; 0..depth) {
                depth_string ~= Indentation;
            }
            return format("%s%s", depth_string, text);
        }

        string attribute(string key, string value) const {
            return format(" %s='%s'", key, value);
        }
}

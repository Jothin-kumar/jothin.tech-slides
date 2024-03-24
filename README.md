# Slides

## Numbering format
 - 0.json
 - 1.json
 - ...
 - init.json

To create a new slide, rename existing `init.json` to `(the previous number + 1).json`. (In this case, `2.json`). Then, add the new slide with `init.json` as it's name.

## Slides format
`slides/{id}.json`
```json
{
    "slide": {
        "border-color": "white",
        "shadow-color": "white",
        "name": "Name here",
        "image-src": "url to image",
        "url": "url to project homepage",
        "GitHub-url": "https://github.com/<repo-owner>/<repo>",
        "description": "Description here"
    },
    "next": "<next slide>"
}
```
 - `shadow-color` and `border-color` are optional parameters (leave blank string as value if unused).
 - `next` parameter should have next slide's id as string value. For example, if the current slide is `3.json`, it's `next` key should have value as `"2"`.

## Pinned slides
`pinned.json`
```json
{
    ".": ["0", "5", "init", "6"]
}
```
The `"."` parameter should contain value as a list of strings. The order of pinned slides is the same as the order of the list.

# Search

## Format
`search.json`
```json
[
    {
        "title": "Test",
        "description": "description here",
        "url": "//joth.in"
    }
]
```
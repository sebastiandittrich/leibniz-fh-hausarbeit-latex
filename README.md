# Vorlage für Hausarbeiten an der Leibniz FH in Latex

Mit der latex-workshop erweiterung für vs code sollte folgende konfiguration verwendet werden: 

```json
"latex-workshop.latex.recipes": [
    {
        "name": "Xelatex biber",
        "tools": [
            "xelatex",
            "biber",
            "xelatex",
        ]
    },
],
"latex-workshop.latex.tools": [
    {
        "name": "xelatex",
        "command": "xelatex",
        "args": [
            "-synctex=1",
            "--shell-escape",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOC%"
        ],
        "env": {}
    },
    {
        "name": "biber",
        "command": "biber",
        "args": [
            "%DOCFILE%"
        ],
        "env": {}
    },
],
```

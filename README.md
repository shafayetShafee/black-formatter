# Black-formatter Extension For Quarto

A [Quarto](https://quarto.org/) filter to format the python code using [black](https://black.readthedocs.io/en/stable/index.html)

## Installing

```bash
quarto add shafayetShafee/black-formatter
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

Add the filter in your quarto document

```
---
filters:
  - black-formatter
---
```

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd) and view the rendered output with black-formatted code [here](https://shafayetshafee.github.io/black-formatter/example.html)


# Black-formatter Extension For Quarto

A [Quarto](https://quarto.org/) filter to format the python code using [black](https://black.readthedocs.io/en/stable/index.html)

## Installing

```bash
quarto add shafayetShafee/black-formatter
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

Before using this filter, make sure black is installed already. See [here](https://github.com/psf/black#installation) for installation command.

Then add the filter in your quarto document

```
---
filters:
  - black-formatter
---
```

And it is possible to specify the black command line options [via a `pyproject.toml` file](https://black.readthedocs.io/en/stable/usage_and_configuration/the_basics.html#configuration-via-a-file).

Suppose you want to use 80 characters per line i.e. `--line-length=80` (Black defaults to 88 character per line), you can specify the follwoing in `pyproject.toml` file under `[tool.black]`,

```
[tool.black]
line-length = 80
```

And then place this toml file in the same directory along with the qmd file of which python code-chunks you want to format.

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd) and view the rendered output with black-formatted code [here](https://shafayetshafee.github.io/black-formatter/example.html)


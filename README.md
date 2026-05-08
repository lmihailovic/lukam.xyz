# lukam.xyz

This is the code for my personal website, which uses my own static site
generator, [sugo](https://github.com/lmihailovic/sugo).

## Structure

The website structure mirrors the intended
[sugo](https://github.com/lmihailovic/sugo) website structure:

| Directory    | Description                          |
|--------------|--------------------------------------|
| `content/`   | The content for the pages themselves |
| `templates/` | Filled with data from `content/`     |
| `static/`    | Images, fonts, scripts, styles...    |

## How to deploy

1. Make sure you have `sugo` in your `$PATH`

2. Go to the root of the repository and run:

```shell
sugo
```

3. Copy the contents of the newly made `website/` directory to your server's
`public_html` directory.

### To do

- [ ] Add footnote support.
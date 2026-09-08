# 4thcrosslabs.org

[Zola](https://www.getzola.org) static site. `data/` is the source of truth for all pages and items.
`build.py` generates Zola content from it.

```sh
make clean
make build

zola serve
```

## Syncing project metadata

`build.py sync-github` refreshes project's stars, description etc. via Github API.


```sh
make sync
```

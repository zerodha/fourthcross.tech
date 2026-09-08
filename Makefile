PYTHON ?= python3
ZOLA   ?= zola

.PHONY: build gen serve sync clean

build: gen
	$(ZOLA) build

gen:
	$(PYTHON) build.py build

sync:
	$(PYTHON) build.py sync-github

serve: gen
	$(ZOLA) serve

clean:
	rm -rf public content/authors

PYTHON ?= python3
ZOLA   ?= zola

.PHONY: build gen serve clean

build: gen
	$(ZOLA) build

gen:
	$(PYTHON) build.py

serve: gen
	$(ZOLA) serve

clean:
	rm -rf public content/authors

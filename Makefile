PYTHON ?= python3
ZOLA   ?= zola

.PHONY: build gen serve clean

# Generate content from data/, then render the site into public/.
build: gen
	$(ZOLA) build

# data/ -> content/authors/, config.toml project_files.
gen:
	$(PYTHON) build.py

serve: gen
	$(ZOLA) serve

# Remove generated
clean:
	rm -rf public content/authors

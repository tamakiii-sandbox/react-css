
dist/style.css:
	npx postcss src/style.pcss -o $@

clean:
	rm -rf dist/style.css
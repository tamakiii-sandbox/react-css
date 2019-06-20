include package.mk

build:
	npx webpack --mode development --watch --progress --verbose

build-watch: package.json webpack.config.js src/index.html
	npx nodemon $(foreach f,$^,--watch $f) --exec make -f dev.mk build

server:
	npx webpack-dev-server --mode development --port 8080 --content-base public --output-public-path /dist

server-watch: package.json webpack.config.js src/index.html
	npx nodemon $(foreach f,$^,--watch $f) --exec make -f dev.mk server

dist/style.css: src/style.pcss
	npx nodemon $(foreach f,$^,--watch $f) --exec make -f Makefile clean dist/style.css

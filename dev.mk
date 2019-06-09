include package.mk

build:
	npx webpack --mode development --watch --progress --verbose

build-watch: package.json webpack.config.js
	npx nodemon $(foreach f,$^,--watch $f) --exec make -f dev.mk build

server:
	npx webpack-dev-server --mode development --port 8080 --hot --content-base public --output-public-path /dist

server-watch: package.json webpack.config.js
	npx nodemon $(foreach f,$^,--watch $f) --exec make -f dev.mk server


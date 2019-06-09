.PHONY: package.json

PACKAGES := \
	react \
	react-dom \
	styled-components \
	@types/react \
	@types/react-dom \
	@types/styled-components
	# @types/node \
	# @types/react-virtualized \
	# css-loader \
	# html-webpack-plugin \
	# react-test-renderer \
	# react-virtualized \
	# source-map-support \
	# style-loader \
	# ts-loader \
	# typescript \

DEV_PACKAGES := \
	eslint \
	webpack \
	webpack-cli \
	webpack-dev-server \
	typescript \
	ts-loader \
	jest \
	enzyme \
	enzyme-adapter-react-16 \
	react-test-renderer \
	ts-jest \
	tslint \
	power-assert \
	@babel/preset-env \
	@babel/preset-react \
	@types/jest \
	@types/enzyme \
	@types/enzyme-adapter-react-16 \
	@types/react-test-renderer \
	@types/power-assert
	# @babel/core \
	# @babel/preset-env \
	# babel-loader \
	# babel-plugin-syntax-dynamic-import \
	# css-loader \
	# node-sass \
	# sass-loader \
	# style-loader \
	# uglifyjs-webpack-plugin \

install: \
	package.json \
	tslint.json \
	tsconfig.json \
	webpack.config.js \
	.gitignore

package.json:
	npm init --yes
	npm install --save-prod $(PACKAGES)
	npm install --save-dev $(DEV_PACKAGES)

tslint.json:
	npx tslint --init

tsconfig.json:
	npx tsc --init

webpack.config.js:
	npx webpack init
	npx eslint --fix --fix --no-eslintrc --rule 'indent: ["error", 2]' --parser-options='ecmaVersion:2015' $@

.gitignore:
	touch $@
	echo '/node_modules/' >> $@
	echo '.yo-rc.json' >> $@

clean:
	rm -rf package.json
	rm -rf tslint.json
	rm -rf tsconfig.json
	rm -rf webpack.config.js
	rm -rf .gitignore
	rm -rf node_modules/


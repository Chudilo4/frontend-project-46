install: install-deps
	npx simple-git-hooks

run:
	./bin/gendiff.js -f

install-deps:
	npm ci

test:
	npm test

test-coverage:
	npm test -- --coverage --coverageProvider=v8

lint:
	npx eslint .

install_in_system:
	sudo npm link

publish:
	 npm publish --dry-run
fix:
	npx prettier --write .
	npx eslint . --fix

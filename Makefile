.PHONY: build up open-browser watch touch-index.js touch-gatsby-config.js touch-package.json down

build:
	docker compose build

up:
	docker compose up -d

open-browser:
	open http://localhost:8000

watch:
	docker compose watch

touch-index.js:
	touch site/src/pages/index.js

touch-gatsby-config.js:
	touch site/gatsby-config.js

touch-package.json:
	touch site/package.json

down:
	docker compose down


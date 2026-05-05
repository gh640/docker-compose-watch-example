.PHONY: build up open-browser watch touch-index.astro touch-astro-config.mjs touch-package.json down

build:
	docker compose build

up:
	docker compose up -d

open-browser:
	open http://localhost:8000

watch:
	docker compose watch

touch-index.astro:
	touch site/src/pages/index.astro

touch-astro-config.mjs:
	touch site/astro.config.mjs

touch-package.json:
	touch site/package.json

down:
	docker compose down

dev:
	pnpm docs:dev

build:
	export NODE_OPTIONS=--openssl-legacy-provider

	pnpm i
	pnpm docs:build

install:
	pnpm add -D vuepress@next @vuepress/client@next vue vuepress-theme-hope

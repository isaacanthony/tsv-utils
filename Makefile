build:
	@docker build -t tsv-utils .

start:
	@docker run \
		--name tsv-utils \
		--rm \
		-it \
		-v $(PWD):/src \
		tsv-utils bash

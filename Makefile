build:
	@docker build -t tsv-utils .

run:
	@if ! [ $(cmd) ]; then echo 'Error: Must set cmd variable.' && exit 1; fi
	@docker run \
		--name tsv-utils \
		--rm \
		-it \
		-v $(PWD)/bin:/src/bin \
		-v $(PWD)/data:/src/data \
		tsv-utils bash bin/$(cmd).sh

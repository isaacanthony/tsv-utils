clear:
	@rm -rf raw interim processed

raw/iris.csv:
	@mkdir -p raw
	@curl -Lo raw/iris.csv https://gist.githubusercontent.com/curran/a08a1080b88344b0c8a7/raw/0e7a9b0a5d22642a06d3d5b9bcbad9890c8ee534/iris.csv

interim/iris.tsv: raw/iris.csv
	@mkdir -p interim
	@cat raw/iris.csv | \
		/bin/csv2tsv --header | \
		/bin/tsv-filter --header --not-empty species \
		> interim/iris.tsv

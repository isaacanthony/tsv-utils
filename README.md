# tsv-utils
Dockerized wrapper for Ebay [tsv-utils](https://github.com/eBay/tsv-utils)

## Purpose

The following is from Ebay's tsv-utils [README](https://github.com/eBay/tsv-utils#tools-overview).

> These tools perform data manipulation and statistical calculations on tab delimited data. They are intended for large files. Larger than ideal for loading entirely in memory in an application like R, but not so big as to necessitate moving to Hadoop or similar distributed compute environments. The features supported are useful both for standalone analysis and for preparing data for use in R, Pandas, and similar toolkits.
>
> The tools work like traditional Unix command line utilities such as cut, sort, grep and awk, and are intended to complement these tools. Each tool is a standalone executable. They follow common Unix conventions for pipeline programs. Data is read from files or standard input, results are written to standard output. Fields are identified either by field name or field number. The field separator defaults to TAB, but any character can be used. Input and output is UTF-8, and all operations are Unicode ready, including regular expression match (tsv-filter). Documentation is available for each tool by invoking it with the --help option. Most tools provide a --help-verbose option offering more extensive, reference style documentation.

## Usage
* `make build`
* `make start`
  * `cd iris`
  * `make interim/iris.tsv`

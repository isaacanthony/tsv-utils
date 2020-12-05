#!/bin/bash
tsv-utils/csv2tsv --header data/raw/iris.csv |
  tsv-utils/tsv-filter --header --not-empty species > data/interim/iris.tsv

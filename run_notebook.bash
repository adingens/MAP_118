#!/bin/bash

set -e

jupyter nbconvert \
    --to notebook \
    --execute \
    --inplace \
    --ExecutePreprocessor.timeout=-1 \
    analysis_notebook.ipynb

jupyter nbconvert \
    --output-dir results \
    --output analysis_notebook.md \
    --to markdown \
    analysis_notebook.ipynb

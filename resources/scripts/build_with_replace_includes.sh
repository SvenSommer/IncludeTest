#!/bin/bash

for filename in $(find ../docs -name '*.adoc'); do
    newFileName=${filename//-source/}
    asciidoctor-reducer -o ./../../docs/$newFileName $filename
done

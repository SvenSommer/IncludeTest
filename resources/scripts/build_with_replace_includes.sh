#!/bin/bash
echo "$PWD"
cd "$(dirname "$0")" || exit
echo "$PWD"
for filename in $(find ../docs -name '*.adoc'); do
    newFileName=${filename//-source/}
    asciidoctor-reducer -o ./../../docs/$newFileName $filename
done

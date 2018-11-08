#!/bin/bash

#
# Clone Zondicons, convert svg to vue template files and move to src/zondicons
#
BEGIN_SVG="<svg xmlns=\"http:\/\/www.w3.org\/2000\/svg\" viewBox=\"0 0 20 20\">"
END_SVG="</svg>"
BEGIN_TEMPLATE="<template>"
END_TEMPLATE="</template>"

spinal_to_upper() {
    PASCAL=`echo "$1" | awk -F"-" '{for(i=1;i<=NF;i++){$i=toupper(substr($i,1,1)) substr($i,2)}} 1' OFS=""`
}

rm -rf zondicons
rm -rf ../src/zondicons
mkdir ../src/zondicons

git clone https://github.com/dukestreetstudio/zondicons.git

cd zondicons
cd src

rm "bookmark copy 2.svg"
rm "bookmark copy 3.svg"
rm "radar copy 2.svg"
mv "tools copy.svg" "tools.svg"
mv "filter.svg" "filter-icon.svg"

for filename in *.svg; do
    base=${filename%.svg}
    sed -i -e "s|$BEGIN_SVG|$BEGIN_TEMPLATE|g" "$filename"
    sed -i -e "s|${END_SVG}|${END_TEMPLATE}|g" "$filename"
    spinal_to_upper $base
    mv "$filename" "../../../src/zondicons/${PASCAL}.vue"
done

cd ../../../src/zondicons

INDEX="index.js"
touch $INDEX

for filename in *.vue; do
    base=${filename%.vue}
    echo "import ${base} from './${filename}';" >> $INDEX
done
echo  >> $INDEX
echo "export default {" >> $INDEX
for filename in *.vue; do
    base=${filename%.vue}
    echo "  ${base}," >> $INDEX
done

echo "};" >> $INDEX

# clean up
cd ../../scripts
pwd
rm -rf zondicons




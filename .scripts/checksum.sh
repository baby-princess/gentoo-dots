#!/bin/bash

file="$1"
checksums=($(md5sum "${file}" | awk '{print $1}' ;sha1sum "$file" | awk '{print $1}'; sha256sum "$file" | awk '{print $1}'))
echo -e "$file md5 sum: ${checksums[0]}\n$file sha1 sum: ${checksums[1]}\n$file sha256 sum: ${checksums[2]}"


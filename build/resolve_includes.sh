#!/bin/bash
shopt -s globstar

currentDir=$(dirname `readlink -f $0`)
sourcePath="$currentDir/../src"

if [ $# -ne 2 ] ; then
	echo 'Error: wrong argument count' > /dev/stderr
	exit 1
fi

fileToResolve="$1"
prefix="$2"

declare -a files;
files=("lib/Helper.hpp");
classes=("assert");

# ================= scan files =================

IFS=$'\n'
for file in "$sourcePath"/**/*.hpp "$sourcePath"/**/*.cpp ; do
	for match in $(cat "$file" | grep -oE '^([\t ]*(class|struct) )[^ <>]+') ; do
		classes+=("`echo -n "$match" | sed -r 's/^(class|struct) //'`");
		files+=("${file:${#sourcePath} + 1}");
	done;
done;

if [ ${#files[@]} -ne ${#classes[@]} ] ; then
	echo 'E: arrays having different sizes';
	exit 1;
fi

#for i in ${!files[@]}; do
#	echo "${classes[$i]} -> ${files[$i]}";
#done

# ================= lookup =================

declare -a resolvedIncludes;
declare -a dispatchedIncludes;

function isAlreadyAdded(){
	local file="$1"

	for existingFile in ${resolvedIncludes[@]}; do
		if [ "$existingFile" == "$file" ] ; then
			return 0
		fi
	done

	return 1
}
function isAlreadyDispatched(){
	local file="$1"

	for existingFile in ${dispatchedIncludes[@]}; do
		if [ "$existingFile" == "$file" ] ; then
			return 0
		fi
	done

	return 1
}

function resolve(){
	local file="$1"
	local fileContent="$(cat "$sourcePath/$file")"
	local i;
	for i in ${!files[@]}; do
		if echo -n "$fileContent" | grep -Eq "([^A-Za-z0-9_.]|^)${classes[$i]}([^A-Za-z0-9_.]|$)" ; then
			if ! isAlreadyDispatched "${files[$i]}" ; then
				dispatchedIncludes+=("${files[$i]}")
				if [ "${files[$i]}" != "$file" ] ; then
					echo "[+] scanning children of ${files[$i]} (POS: $i)" >> /dev/stderr;
					resolve "${files[$i]}"
					echo "[-] finished scanning children of ${files[$i]} (POS: $i)" >> /dev/stderr;
				fi
			
				if ! isAlreadyAdded "${files[$i]}" && [ "${files[$i]}" != "$fileToResolve" ]  && [ "${files[$i]}" != "$file" ] ; then
					echo "adding ${files[$i]}" >> /dev/stderr
					resolvedIncludes+=("${files[$i]}")
				fi
			fi
		fi
	done
}

resolve "$fileToResolve"

# ================= output =================

for file in ${resolvedIncludes[@]}; do
	echo "#include \"$prefix$file\"";
done
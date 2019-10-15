#!/usr/bin/env bash

#
# Inspired by:
# - https://github.com/megoth/solid-update-index-tutorial
#

export sid="s%3AqWgtX_idr1D4lYp97ffPy2_0gZeeJ1nh.YWq73RIF6Z1C2bszWRQT99bF9rSB7U1XFF70JWZ0HNo"
export base="https://doctorbud.solid.community"

# upload <localFile> [<remoteFile>]
upload() {
	localFile=$1
	remoteFile=$2
	if [ -z "$remoteFile" ]
	then
	remoteFile=$localFile
	fi
	remoteURL=${base}/${remoteFile}

	filename=$(basename -- "$remoteFile")
	extension="${filename##*.}"
	filename="${filename%.*}"

	extensionLC="$(tr [A-Z] [a-z] <<< "$extension")"
	if [ ${extensionLC} == "html" ]; then
		curl --cookie "connect.sid=${sid}" -H "Content-Type: text/html" --upload-file ${localFile} ${remoteURL}
	else
		curl --cookie "connect.sid=${sid}" ${mimeHeaders} --upload-file ${localFile} ${remoteURL}
	fi
	echo ""
}
export -f upload

# delete <remotePath>]
delete() {
	remotePath=$1
	remoteURL=${base}/${remotePath}
	curl --cookie "connect.sid=${sid}" -XDELETE ${remoteURL}
}
export -f delete


# Script to delete existing files

# delete public/dokieli/index.html
# delete public/dokieli/dokieli.html
# delete public/dokieli/dokieli_markdown.html
# delete public/dokieli/dokieli_smartdown.html
# delete public/dokieli/
# delete public/folder1/folder2/Nested.md
# delete public/folder1/folder2/
# delete public/folder1/
# delete public/README.md
# delete public/D3.md
# delete public/Graphviz.md
# delete public/Home.md
# delete public/LDF.md
# delete public/Mobius.md
# delete public/P5JS.md
# delete public/SolidLDFlex.md
# delete public/SolidLDFlexContainer.md
# delete public/SolidQueries.md
# delete public/smartdown/index.html
# delete public/smartdown/

# Script to upload files

upload README.md public/README.md
upload public/folder1/folder2/Nested.md
upload public/D3.md
upload public/Graphviz.md
upload public/Home.md
upload ../dokieli/indexoverview.html public/dokieli/index.html
upload ../dokieli/index.html public/dokieli/dokieli.html
upload ../dokieli/indexmarkdown.html public/dokieli/dokieli_markdown.html
upload ../dokieli/indexsmartdown.html public/dokieli/dokieli_smartdown.html
upload public/LDF.md
upload public/Mobius.md
upload public/P5JS.md
upload public/SolidLDFlex.md
upload public/SolidLDFlexContainer.md
upload public/SolidQueries.md
upload public/smartdown/index.html




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
	curl --cookie "connect.sid=${sid}" --upload-file ${localFile} ${remoteURL}
}
export -f upload

# upload_html <localFile> [<remoteFile>]
upload_html() {
	localFile=$1
	remoteFile=$2
	if [ -z "$remoteFile" ]
	then
	remoteFile=$localFile
	fi
	remoteURL=${base}/${remoteFile}
	curl --cookie "connect.sid=${sid}" -H "Content-Type: text/html" --upload-file ${localFile} ${remoteURL}
}
export -f upload_html


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
# delete public/folder1/folder2/Nested.markdown
# delete public/folder1/folder2/
# delete public/folder1/
# delete public/README.md
# delete public/D3.markdown
# delete public/Graphviz.markdown
# delete public/Home.markdown
# delete public/indexmarkdown.html
# delete public/indexsmartdown.html
# delete public/LDF.markdown
# delete public/Mobius.markdown
# delete public/P5JS.markdown
# delete public/SolidLDFlex.markdown
# delete public/SolidLDFlexContainer.markdown
# delete public/SolidQueries.markdown
# delete public/smartdown/index.html
# delete public/smartdown/


# Script to upload files

upload README.md public/README.md
upload public/folder1/folder2/Nested.markdown
# upload public/folder1/folder2/
# upload public/folder1/
upload public/D3.markdown
upload public/Graphviz.markdown
upload public/Home.markdown
upload_html ../dokieli/indexoverview.html public/dokieli/index.html
upload_html ../dokieli/index.html public/dokieli/dokieli.html
upload_html ../dokieli/indexmarkdown.html public/dokieli/dokieli_markdown.html
upload_html ../dokieli/indexsmartdown.html public/dokieli/dokieli_smartdown.html
upload public/LDF.markdown
upload public/Mobius.markdown
upload public/P5JS.markdown
upload public/SolidLDFlex.markdown
upload public/SolidLDFlexContainer.markdown
upload public/SolidQueries.markdown
upload_html public/smartdown/index.html
# upload public/smartdown/




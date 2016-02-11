#!/bin/bash

out=${1//.\//$2\/}
out=${out//.md/.html}
echo "$1 => $out"

mkdir -p "${out%/*}"

curl -sSL -X POST --form-string "html=$(
	cat "webpage-head.htm"
	curl -sSL -X POST -T "$1" -H "Content-Type: text/plain;" "https://api.github.com/markdown/raw?client_id=f138068c885b89890c13&client_secret=$GH_APP_SECRET"
	echo '</div></div></body></html>'
)" www.willpeavy.com/minifier/ | tr -d '\n\r' | sed -e 's/.*<p><textarea id="html" name="html">//' -e 's:</textarea></p>.*::' -e 's/> </></g' | perl -pe 's|( ?)/\*.*?\*/( ?)||g' | perl -pe 's/&amp;([[:alnum:]]+);/\&\1;/g' > "$out"

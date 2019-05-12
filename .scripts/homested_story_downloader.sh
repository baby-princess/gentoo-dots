#!/bin/bash
output_dir="test_stories"
if [ ! -f /usr/bin/dos2unix ]
then
	echo "dos2unix is missing, please install it so this script works correctly"
	exit 1
fi

curl http://abdlstories.homestead.com/AB_DL_Stories.html --silent |  grep -Eo 'href="[^\"]+"' | sed 's/href="//g; s/"//g' | grep -Ev "bedwettingabdl|homestead.com|/AB_DL|freefind.com|shareasale" > story_links

if [ ! -d ${output_dir} ]
then
	mkdir ${output_dir}
fi

while read story
do
	if [ ! -f ${output_dir}/${story} ]
	then
		curl http://abdlstories.homestead.com/${story} --silent | grep -Ev "<!DOCTYPE|<html>|</html|<head>|<!--|</script|<script|<meta|<title>|<link type|@import|<style|</style|<body|</head|function reDo|top.location.reload|}|-->|navigator.appName ==|top.onresize|dom=document.getElementById|<noscript>|tttp://www.homestead.com/~media/elements/shared/javascript_disabled.gif|id=\"element2\"|</noscript>|site/Scripts_HitCounter/HitCounter.dll|HitCounter.dll|</body>|var user|to=-|Scripts_ExternalRedirect|id=\"element6\"|id=\"elemnet5\"" |  sed "s/<b>//g; s,</b>,,g; s,</font>,,g; s,</div>,,g; s/<div align=\"left\">//g; s/<font face=\"Helvetica, Arial, sans-serif\" class=\"size20 Helvetica20\" color=\"\#0066FF\">//g; s/<img src=\"\/tp.gif\" alt=\"\" border=\"0\" width=\"30\" class=\"lpxtab\">//g; s/<div style=\"position: absolute; top: 313px; left: 19px; width: 679px; height: 4590px; z-index: 5;\" id=\"element8\">//g; s/&#160;//g; s/<font face=\"Helvetica, Arial, sans-serif\" color=\"#0066FF\" class=\"size20 Helvetica20\">//g; s/<div id=\"element8\" style=\"position: absolute; top: 423px; left: 15px; width: 671px; height: 1680px; z-index: 4;\">//g; s/<div id=\"element8\" style=\"position: absolute; top: 323px; left: 22px; width: 670px; height: 2310px; z-index: 5;\">//g; s/&quot;/\"/g" | sed -E "s/<div id=\"element.\" style=\"position: absolute; top: .px; left: .px; width: ...px; height: 2310px; z-index: [0-9[0-9]];\">//g" \
			| sed 's/<br>/\n/g' | grep -Ev "<input type=\"radio\" name|element7|javascript_disabled.gif|element5|element4|Rate This Story|</form>|td bgcolor|E-mail Address:|<link rel=|<input|AB_DL_Stories.html|BedWettingABDL_Banner.jpg|E-mail:" > ${output_dir}/${story}

		dos2unix -q ${output_dir}/${story}
		echo "new story in ${output_dir}:  ${story}"
		
	fi
done < story_links

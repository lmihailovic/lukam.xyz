#!/bin/sh

TITLE=$1
DATE=$2
CONTENT=$3
FILENAME=$(echo $1 | sed "s/ /-/g" | tr "[:upper:]" "[:lower:]")
INDEX_INSERTING_LINENUM=21 

echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="color-scheme" content="dark light">
    <link rel="stylesheet" href="/css/page-style.css">
    <title>'$TITLE' | Luka'\''s Webpage</title>
</head>
<body>
    <div class="content">
        <div class="main">
            <span><a href="/blog" class="articleHeading"> &blacktriangleleft; back</a></span>
            <h1 style="margin: 1em 0 0.2em 0;">'$TITLE'</h1>
            <p class="articleInfo">'$DATE'</p>

			'$(echo $CONTENT | sed "s/'/\\'/g")'
		</div>
	</div>

    <footer class="furtherReading">
        <hr>
        <nav>
            <a href="/software">software</a><a href="/">home</a><a href="/hobbies">hobbies</a><a href="/about">about</a><br><a href="/Luka_Mihailovic_CV.pdf" download="Luka_Mihailovic_CV.pdf">житије (cv)</a>
        </nav>
    </footer>
</body>                                                                          
</html>' > ~/web/lukam.xyz/public_html/blog/$FILENAME.html 

INDEX_HEADLINE_HTML='<div class="article"><h2 class="articleHeading"><a href="/blog/'$FILENAME'.html">'$TITLE'</a></h2><p class="articleInfo">'$DATE'</p></div>'

INDEX_HEADLINE_HTML=$(echo $INDEX_HEADLINE_HTML | sed "s/'/\\'/g")

sed -i "$(echo $INDEX_INSERTING_LINENUM)i\
	$INDEX_HEADLINE_HTML" ~/web/lukam.xyz/public_html/blog/index.html

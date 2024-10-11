#!/bin/sh

echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="color-scheme" content="dark light">
    <link rel="stylesheet" href="/css/page-style.css">
    <title>'$1' | Luka'\''s Webpage</title>
</head>
<body>
    <div class="content">
        <div class="main">
            <span><a href="/blog" class="articleHeading"> &blacktriangleleft; back</a></span>
            <h1 style="margin: 1em 0 0.2em 0;">'$1'</h1>
            <p class="articleInfo">'$2'</p>

			'$(echo $3 | sed "s/'/\\'/g")'
		</div>
	</div>

    <footer class="furtherReading">
        <hr>

        <a href="/software">software</a><a href="/">home</a><a href="/hobbies">hobbies</a><a href="/about">about</a><br><a href="/Luka_Mihailovic_CV.pdf" download="Luka_Mihailovic_CV.pdf">житије (cv)</a>
    </footer>
</body>                                                                          
</html>' > ~/web/lukam.xyz/public_html/blog/$(echo $1 | sed "s/ /-/g" | tr "[:upper:]" "[:lower:]").html

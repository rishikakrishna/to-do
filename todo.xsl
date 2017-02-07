<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE
	html
	PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3c.org/TR/xhtml1/DTD/xhtml1-Strict.dtd">

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:fn="http://www.w3.org/2006/xpath-functions">

<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />

<title><xsl:value-of select="todos/list-name"/></title>

<style type="text/css">
body {
	font-size: 90%;
}
h1 {
	font-size: 1.1em;
	font-weight: bold;
	border-bottom: solid #99c 3px;
}
h2 {
	font-size: 1em;
	font-weight: bold;
	border-bottom: solid #99c 2px;
}
h3 {
	font-size: 0.9em;
	font-weight: bold;
	border-bottom: solid #99c 1px;
}
ul {
	margin-top: 0.2em;
	margin-bottom: 0.2em;
}
li.complete {
	color: #999;
	text-decoration: line-through;
}
div#cont {
	margin: 1em 0 0 1em;
	width: 30em;
}
</style>
</head>
<body>

<div id="cont">

<h1><xsl:value-of select="todos/list-name"/></h1>

<h2>Outstanding</h2>
<ul>
<xsl:for-each select="todos/todo/entry">
	<xsl:sort select="@priority" />
	<li>
	<xsl:value-of select="."/>
	</li>
</xsl:for-each>
</ul>

<h2>Complete</h2>
<ul>
<xsl:for-each select="todos/done/entry">
	<xsl:sort select="@priority" />
	<li>
	<xsl:value-of select="."/>
	</li>
</xsl:for-each>
</ul>

</div>
</body>
</html>

</xsl:template>

</xsl:stylesheet>
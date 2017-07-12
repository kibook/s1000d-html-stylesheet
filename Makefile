html-min.xsl: html.xsl
	xslinc html.xsl | xmllint --noblanks - > html-min.xsl

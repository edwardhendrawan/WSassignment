<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="uts.wsd.assign">
	<xsl:template match="/">
		<html>
			<head>
			</head>
			<body>
				<xsl:apply-templates />
			</body>
		</html>
	</xsl:template>
	<xsl:template match="//poll[@id='1']">
		<h1>
			<xsl:apply-templates />
		</h1>
	</xsl:template>
</xsl:stylesheet>
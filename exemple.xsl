<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output 
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" 
	method="html"
	encoding="iso-8859-1"
/>

<xsl:template match="master">
	<html>
		<head>
			<title>TP2</title>
			<link rel="stylesheet" type="text/css" href="style.css"/>
		</head>
		<body bgcolor="#e8f4fa" style="color:#444444;">
			<h1>Informations sur Master</h1>
			<h2>Intervenants</h2>
    			<xsl:call-template name="intervenants" />
			<h2>Unités</h2>
				<xsl:apply-templates select="unite"/>
		</body>
	</html>
</xsl:template>

<xsl:template name="intervenants">
	<xsl:for-each select="//intervenant">
	<p class="nom">
		<xsl:value-of select="nom"/>
	</p>
	<p class="info">
		<b>Adresse : </b>
		<xsl:value-of select="adresse"/>
	</p>
	<p class="info">
		<b>Site : </b>
		<xsl:value-of select="site"/>
	</p>
	<p class="info">
		<b>Téléphone : </b>
		<xsl:value-of select="telephone"/>
	</p>
	<p class="info">
		<b>Elablissment : </b>
		<xsl:value-of select="etablissement"/>
	</p>
	</xsl:for-each>
</xsl:template>
<xsl:template match="unite">
	<p class="nom">
		<xsl:value-of select="nom"/>
	</p>
	<p class="info">
		<b>Nombre de crédits : </b>
		<xsl:value-of select="nombreCredits"/>
	</p>
	<p class="info">
		<b>Résumé : </b>
		<xsl:value-of select="resume"/>
	</p>
	<p class="info">
		<b>Lieu : </b>
		<xsl:value-of select="lieu"/>
	</p>
</xsl:template>
</xsl:stylesheet>

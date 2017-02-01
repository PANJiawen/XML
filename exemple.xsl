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
    			<xsl:call-template name="nomIntervenants"/>
    			
			<h2>Unités</h2>
				<xsl:call-template name="nomUnites"/>
		</body>
	</html>
	
    <xsl:for-each select="//intervenant">
		<xsl:document href="intervenants/{@id}.html" format="html" >
   			<html>
				<head>
					<title><xsl:value-of select="@id"/></title>
					<link rel="stylesheet" type="text/css" href="style.css"/>
				</head>
				<body bgcolor="#e8f4fa" style="color:#444444;">
					
					<xsl:call-template name="intervenants"/>
				</body>
			</html>	
		</xsl:document> 
	</xsl:for-each>
			
	<xsl:for-each select="//unite">
		<xsl:document href="unites/{@id}.html" format="html" >
   			<html>
				<head>
					<title><xsl:value-of select="@id"/></title>
					<link rel="stylesheet" type="text/css" href="style.css"/>
				</head>
				<body bgcolor="#e8f4fa" style="color:#444444;">
					
					<xsl:call-template name="unite"/>
				</body>
			</html>	
		</xsl:document> 
	</xsl:for-each>
						
</xsl:template>

<xsl:template name="nomIntervenants">
	<ul>
		<xsl:for-each select="//intervenant">
			<li><a href="intervenants/{@id}.html"><xsl:value-of select="nom"/></a></li><br/>
		</xsl:for-each>
	</ul>	
</xsl:template>

<xsl:template name="nomUnites">
	<ul>
		<xsl:for-each select="//unite">
			<li><a href="unites/{@id}.html"><xsl:value-of select="nom"/></a></li><br/>
		</xsl:for-each>
	</ul>	
</xsl:template>

<xsl:template name="intervenants">
	
	<p class="nom">
		<h2><xsl:value-of select="nom"/></h2>
	</p>
	<p class="info">
		<b>Adresse : </b>
		<a href="{adresse}"><xsl:value-of select="adresse"/></a>
	</p>
	<p class="info">
		<b>Site : </b>
		<a href="{site}"> <xsl:value-of select="site"/> </a>
	</p>
	<p class="info">
		<b>Téléphone : </b>
		<xsl:value-of select="telephone"/>
	</p>
	<p class="info">
		<b>Elablissment : </b>
		<xsl:value-of select="etablissement"/>
	</p>
	
</xsl:template>

<xsl:template name="unite">
	<p class="nom">
		<h2><xsl:value-of select="nom"/></h2>
	</p>
	<p class="info">
		<b>Nombre de crédits : </b>
		<xsl:value-of select="nombreCredits"/>
	</p>
	<p class="info">
		<b>Résumé : </b>
		<xsl:value-of select="string(resume)"/>
	</p>
	<p class="info">
		<b>Lieu : </b>
		<xsl:value-of select="lieu"/>
	</p>
</xsl:template>

</xsl:stylesheet>

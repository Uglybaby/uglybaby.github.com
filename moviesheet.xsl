<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" >
	<xsl:output method="xml"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>uglygirls</title>
				<script src="http://code.jquery.com/jquery-1.4.2.min.js"/>
			</head>
			<body background="124.jpg">
				
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="groupdes">
	<a href="group2.xml" style="position: absolute; font-family:Axure Handwriting;left: 800px; top: 70px; width: 58px;">click！</a>
		<img src="0.jpg" style="position: absolute; left: 880px; top: 50px; width: 58px;"/>
		<div style="position: absolute; left: 955px; top: 30px;color:#fff;">
			<br/>
			<h2 style="font-family:Axure Handwriting;">
				<xsl:apply-templates select="name"/>
			</h2>
			<div>
				<div style="float: left; text-align: right;font-family:Axure Handwriting; font-weight: bold;color:#fff; line-height: 1.5em;">menberNum<br/>
               topic<br/>
               lucky:<br/>
				</div>
				<div style="float: left; text-align: left; margin-left: 20px; line-height: 1.5em;color:#fff;">
					<xsl:value-of select="memberNum"/>
					<br/>
					<xsl:value-of select="topic"/><a href="FilmLibrary_css.xml">电影浏览</a>
					<br/>
					<xsl:value-of select="lucky"/>
					<br/>
				</div>
			</div>
			
		</div>
	</xsl:template>
	<xsl:template match="member[@id='1']">
		<div style="position: absolute; left: 900px; top:180px;color:#fff;">
			<h2 >
				<xsl:apply-templates select="name"/>
			</h2>
			<div>
				<div style="float: left; text-align: right;font-family:Axure Handwriting; font-weight: bold; line-height: 1.5em;">number<br/>
               sex:<br/>
               constellation:<br/>
               duty:<br/>
				</div>
				<div style="float: left; text-align: left; margin-left: 20px; line-height: 1.5em;">
					<xsl:value-of select="number"/>
					<br/>
					<xsl:value-of select="sex"/>
					<br/>
					<xsl:value-of select="constellation"/>
					<br/>
					<xsl:value-of select="duty"/>
					<br/>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="member[@id='2']">
		<div style="position: absolute; left: 900px; top:330px;color:#fff;">
			<h2>
				<xsl:apply-templates select="name"/>
			</h2>
			<div>
				<div style="float: left; text-align: right;font-family:Axure Handwriting; font-weight: bold; line-height: 1.5em;">number<br/>
               sex:<br/>
               constellation:<br/>
               duty:<br/>
				</div>
				<div style="float: left; text-align: left; margin-left: 20px; line-height: 1.5em;">
					<xsl:value-of select="number"/>
					<br/>
					<xsl:value-of select="sex"/>
					<br/>
					<xsl:value-of select="constellation"/>
					<br/>
					<xsl:value-of select="duty"/>
					<br/>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="member[@id='3']">
		<div style="position: absolute; left: 900px; top:480px;color:#fff;">
			<h2>
				<xsl:apply-templates select="name"/>
			</h2>
			<div>
				<div style="float: left; text-align: right; font-family:Axure Handwriting;font-weight: bold; line-height: 1.5em;">number<br/>
               sex:<br/>
               constellation:<br/>
               duty:<br/>
				</div>
				<div style="float: left; text-align: left; margin-left: 20px; line-height: 1.5em;">
					<xsl:value-of select="number"/>
					<br/>
					<xsl:value-of select="sex"/>
					<br/>
					<xsl:value-of select="constellation"/>
					<br/>
					<xsl:value-of select="duty"/>
					<br/>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

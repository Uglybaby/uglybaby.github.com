<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
	<xsl:output method="xml" />
	<xsl:template match="/">

		<html>
			<head>
				<style type="text/css">
					body {font-family:"Trebuchet MS", Arial,Helvetica,
					sans-serif;}
				</style>
				<style type="text/css">
					#list1 {
					font: italic 1em Georgia, Times, serif;
					color: #999999;
					}
					#list1 p {
					font: normal .8em Arial, Helvetica,
					sans-serif;
					color: #000000;
					}
				</style>
				<title></title>
			</head>
			<body>
				<div style="width:80%;float:left;">

					<xsl:apply-templates select="//film[@id='奋斗的乔伊 Joy']" />
					<xsl:apply-templates select="//film[@id='小王子 Le Petit Prince']" />
					<xsl:apply-templates select="//film[@id='007：幽灵党 Spectre']" />
					<xsl:apply-templates select="//film[@id='小男孩 Little Boy']" />
					<xsl:apply-templates select="//film[@id='与外婆同行 Grandma']" />
					<xsl:apply-templates select="//film[@id='无理之人 Irrational Man']" />
					<xsl:apply-templates select="//film[@id='精灵旅社2 Hotel Transylvania 2']" />
					<xsl:apply-templates select="//film[@id='误杀瞒天记 Drishyam']" />
					<xsl:apply-templates select="//film[@id='喜马拉雅 히말라야']" />
					<xsl:apply-templates select="//film[@id='麦克白 Macbeth']" />
					<xsl:apply-templates select="//film[@id='妇女参政论者 Suffragette']" />
					<xsl:apply-templates select="//film[@id='蚁人 Ant-Man']" />
					<xsl:apply-templates select="//film[@id='烈日灼心']" />
					<xsl:apply-templates select="//film[@id='已经开始想你 Miss You Already']" />
					<xsl:apply-templates select="//film[@id='港囧']" />
					<xsl:apply-templates select="//film[@id='分手再说我爱你']" />
					<xsl:apply-templates select="//film[@id='先知 The Prophet']" />
					<xsl:apply-templates
						select="//film[@id='明月守护者 Mune, le gardien de la lune']" />
					<xsl:apply-templates
						select="//film[@id='青春的三段回忆 Trois souvenirs de ma jeunesse']" />
					<xsl:apply-templates select="//film[@id='三傻大闹宝莱坞 3 Idiots']" />
				</div>


				<div style="width:20%;position: absolute;right:0px;">
					<p style="">电影排行榜</p>
					<ol id="list1">
						<xsl:for-each select="//film">
							<xsl:sort select="score" order="descending" />
							<li>
								<p>
									<xsl:value-of select="title" />
								</p>
							</li>
						</xsl:for-each>
					</ol>
					<br/>
					<br/>
					<br/>
					<p>热门电影</p>
					
					<xsl:for-each select="//film">
						<xsl:choose>
							<xsl:when test="score &gt; 8">
								<li>
									<p
										style="font: normal .8em Arial, Helvetica,sans-serif;color: #000000;">
										<xsl:value-of select="title" />
									</p>
								</li>
							</xsl:when>
							<xsl:otherwise>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:for-each>
				</div>



			</body>
		</html>
	</xsl:template>
	<xsl:template match="film">
		<div
			style="background-color:rgb(245,250,255);position: relative;padding-bottom:30px;">
			<div style="padding-bottom:10px">
				<a style="font-size:20px;position: relative;left:50px;font-weight:bold;">
					<xsl:apply-templates select="title" />
				</a>
			</div>
			<div style="overflow:hidden;">
				<div style="width:70%;float:left">
					<a style="float:left;position: relative;left:50px;">
						<img src="cover/{@id}.jpg" />
					</a>
					<p style="margin-left:160px;font-size:10px;">
						<a style="color:rgb(0,0,0);">导演：</a>
						<a style="color:rgb(94,124,159)">
							<xsl:for-each select="directors/director">
								<xsl:value-of select="." />
								<xsl:if test="position()!=last()">
									/
								</xsl:if>
							</xsl:for-each>
						</a>
					</p>
					<p style="margin-left:160px;font-size:10px;">
						<a style="color:rgb(0,0,0)">编剧：</a>
						<a style="color:rgb(94,124,159)">
							<xsl:for-each select="screenwriter/writer">
								<xsl:value-of select="." />
								<xsl:if test="position()!=last()">
									/
								</xsl:if>
							</xsl:for-each>
						</a>
					</p>
					<p style="margin-left:160px;font-size:10px;">
						<a style="color:rgb(0,0,0)">主演：</a>
						<a style="color:rgb(94,124,159)">
							<xsl:for-each select="starring_actor/actor">
								<xsl:value-of select="." />
								<xsl:if test="position()!=last()">
									/
								</xsl:if>
							</xsl:for-each>
						</a>
					</p>
					<p style="margin-left:160px;font-size:10px;">
						片长：
						<xsl:for-each select="footages/footage">
							<xsl:value-of select="." />
						</xsl:for-each>
					</p>
					<p style="margin-left:160px;font-size:10px;;">
						制片国家：
						<xsl:value-of select="country" />
					</p>
					<p style="margin-left:160px;font-size:10px;">
						语言：
						<xsl:for-each select="langs/lang">
							<xsl:value-of select="." />
						</xsl:for-each>
					</p>
					<p style="margin-left:160px;font-size:10px;">
						上映时间：
						<xsl:for-each select="release_times/release_time">
							<xsl:value-of select="." />
						</xsl:for-each>
					</p>
					<p style="margin-left:50px;color:rgb(3,104,21)">剧情介绍：</p>
					<p style="margin-left:50px;width:700px;font-size:15px">
						<xsl:value-of select="description" />
					</p>
				</div>
				<div
					style="position: absolute;right:100px;
						display:-webkit-box;
						 box-shadow:10px 2px 5px #333333;">
					<p style="font-size:30px;">
						<p style="color:rgb(90,90,90);font-size:20px">评分</p>
						<xsl:value-of select="score" />
					</p>
				</div>
			</div>
			<hr style="border:1px dashed #F00" width="90%" size="1" />
		</div>
	</xsl:template>
</xsl:stylesheet>
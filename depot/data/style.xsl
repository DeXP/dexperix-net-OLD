<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--  Root template - start from it -->
	<xsl:template match="root">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru">
<head>
	<meta http-equiv="content-type" content="application/xhtml+xml; charset=utf-8" />
	<meta name="author" content="Dmitry Hrabrov a.k.a. DeXPeriX" />
<style type="text/css">
body{ color: black; background-color: white; margin: 20px; }
table { border: 0px solid white; padding: 10px; margin: 10px; display: block; }
td { text-align: left; vertical-align: top; }
ol { background: url("data/diz/img09.gif") left top no-repeat; padding: 30px 60px; margin-left: 0px; }
img { border: 0px solid white; margin-right: 15px; }	
h3 { margin: 0px; padding: 0px; color:#030515; background-color: transparent; }
p { margin-bottom: 0px; padding-bottom: 0px; color: #333; background-color: transparent; }
span { color: #444; background-color: transparent; font-size: 90%; }
a { color: #222; } a:hover { color: #86878A; } .centered { text-align: center; } 
h2, h2 a{ margin-left: 20px; margin-top: 40px; color:#26313d; background-color: transparent; text-decoration: none; }
.bookcase { clear: both; border: 1px solid white; background-image: url("data/diz/img11.gif"); background-repeat: no-repeat; background-position: right bottom; margin-bottom: 30px; }
.bookltop { background-image: url("data/diz/img09.gif"); background-repeat: no-repeat; background-position: left top; padding: 35px 20px 20px; }
.bookrtop { background-image: url("data/diz/img08.gif"); background-repeat: no-repeat; background-position: right top; }
.booklbot { background-image: url("data/diz/img10.gif"); background-repeat: no-repeat; background-position: left bottom; }
.bcount { padding-left: 15px; }
.secrig { float: right; font-weight: normal; margin-right: 15px; }
#copyright { color: #86878A; text-align: right; } #copyright a { color: #86878A; }
#header { height: 110px; background-image: url("data/diz/hebg.jpg"); background-repeat: repeat-x; }
#header h3 { text-shadow: 1px 1px 2px #999; color: #333; background-color: transparent; }
#header a { text-shadow: 1px 1px 2px #999; }
#header a:hover { text-shadow: 1px 1px 2px #ccc; }
#hl { padding-left: 10px; height: 110px; background-image: url("data/diz/lh.jpg"); background-repeat: no-repeat; background-position: left top; }
#hr { height: 110px; background-image: url("data/diz/rh.jpg"); background-repeat: no-repeat; background-position: right top; }
#searchFormD { float: right; padding-right: 10px; padding-top: 10px; background-color: transparent; color: #999; }
#searchFormD input.stext { border: 1px solid #b8b8b8; background-color: white; color: #333; width: 200px; }
#searchFormD input.sbut { width: 75px; height: 24px; margin-left: 5px; }
#searchFormD input.isbut { margin-left: 5px; margin-bottom: -7px }
#authlets a { padding-right: 12px }
#b-img-b{text-align:center;height:164px;margin:0 15px 5px 0;display:inline;float:left;}
#b-img-b * {margin:0;padding:0;border:0;text-align:center;}
#b-img-b .r {background: url(data/s7/img_sh_r.gif) repeat-y right top;}
#b-img-b .b {background: url(data/s7/img_sh_b.gif) repeat-x left bottom;}
#b-img-b .br {background: url(data/s7/img_sh_br.gif) no-repeat right bottom;}
#b-img-b .bl {background: url(data/s7/img_sh_bl.gif) no-repeat left bottom;}
#b-img-b .tr {background: url(data/s7/img_sh_tr.gif) no-repeat right top;padding: 0 6px 6px 0;}
#b-img-b .in {background-color:#8F8C82; position: relative; overflow: visible;}
#b-img-b img.cover {height:160px;background:#9C998D;border: 1px solid #493F3F;border-top-color:#A29F98;border-left-color:#A29F98;vertical-align:bottom;}
.addinfo {padding: 10px 0px; }
.com_head {	margin-right: 10px; padding: 0px 20px; cursor: pointer; background: url(data/diz/document.gif) left top no-repeat;}
.com_head:hover { color: #86878A; text-decoration: underline; background: url(data/diz/document-blue.gif) left top no-repeat;} 
.com_body {	padding: 5px 10px 0px;}
.bstate { background: url(data/diz/shar.gif) left top no-repeat; margin-left: 10px; padding-left: 21px; padding-right: 13px; }
.bstate:hover { background: url(data/diz/shar-blue.gif) left top no-repeat; }
</style>
	<script type="text/javascript" src="data/scripts/jquery-1.2.6.js"></script> 
	<script type="text/javascript" src="data/scripts/books.js"></script>
	<title>DeXPeriX's books : <xsl:apply-templates select="@name"/></title>
</head>
<body>
	<div id="header"><div id="hr"><div id="hl">
		<div id="searchFormD" style="display: none;"><form onsubmit="searchBook(); return false">Поиск: <input type="text" class="stext" name="stSearch" id="stSearch" value=""/><input type="image" src="data/diz/search.png" class="isbut" value="Искать" onclick="searchBook();" /><br/><div id="searchRes" style="display: none">Книг найдено: <span id="searchResNum"><xsl:value-of select="count(//book)"/></span></div></form></div>
		<img src="data/diz/knigi.gif" align="left" width="140" height="103" alt="logo"/> <br/><h3>DeXPeriX's books list : <xsl:apply-templates select="@name"/></h3><br/>  .:: <a href="index.xml">Начальная страница</a> :: <a href="professional.xml">Профессиональная литература</a> :: <a href="fantasy.xml">Фэнтези и фантастика</a> ::. </div></div></div>
		
	<p>Здесь Вы можете увидеть список бумажных книг, которые есть на моих полках. Обложки могут не всегда соответствовать имеющимся, хотя я стараюсь подбирать максимально похожие. Некоторых книг в сериях может нехватать. Также книги не всегда доступны на данный момент, поэтому у некоторых книг указан статус.</p>
	<xsl:if test="count(//book)"><p>Сейчас Вы смотрите категорию "<xsl:apply-templates select="@name"/>". Количество книг в данной категории: <i><xsl:value-of select="count(//book)"/></i>.</p>
	<div style="display:none">
	<div id="authletcont" style="display: none">
		<p><b>Авторы:</b></p>
		<div id="authlets">
			<a id="letА" style="display: none">А</a>
			<a id="letБ" style="display: none">Б</a>
			<a id="letВ" style="display: none">В</a>
			<a id="letГ" style="display: none">Г</a>
			<a id="letД" style="display: none">Д</a>
			<a id="letЕ" style="display: none">Е</a>
			<a id="letЖ" style="display: none">Ж</a>
			<a id="letЗ" style="display: none">З</a>
			<a id="letИ" style="display: none">И</a>
			<a id="letК" style="display: none">К</a>
			<a id="letЛ" style="display: none">Л</a>
			<a id="letМ" style="display: none">М</a>
			<a id="letН" style="display: none">Н</a>
			<a id="letО" style="display: none">О</a>
			<a id="letП" style="display: none">П</a>
			<a id="letР" style="display: none">Р</a>
			<a id="letС" style="display: none">С</a>
			<a id="letТ" style="display: none">Т</a>
			<a id="letУ" style="display: none">У</a>
			<a id="letФ" style="display: none">Ф</a>
			<a id="letХ" style="display: none">Х</a>
			<a id="letЦ" style="display: none">Ц</a>
			<a id="letЧ" style="display: none">Ч</a>
			<a id="letШ" style="display: none">Ш</a>
			<a id="letЩ" style="display: none">Щ</a>
			<a id="letЫ" style="display: none">Ы</a>
			<a id="letЭ" style="display: none">Э</a>
			<a id="letЮ" style="display: none">Ю</a>
			<a id="letЯ" style="display: none">Я</a>
		</div>
	</div>
	</div>
	<p><b><a onclick="$('#tocs').slideToggle(500);" id="spisokRazdelov">Список разделов категории "<xsl:apply-templates select="@name"/>"</a></b></p>
<!-- Table of contents -->
	<ol id="tocs">
		<xsl:for-each select="//section">
		<li>
			<a class="hovered">
			<xsl:attribute name="href">
				<xsl:text>#cat</xsl:text>
				<xsl:value-of select="position()"/>
			</xsl:attribute>
			<xsl:attribute name="onclick">
				<xsl:text>showOnlyCat("cat</xsl:text>
				<xsl:value-of select="position()"/>
				<xsl:text>");</xsl:text>
			</xsl:attribute>

				<xsl:value-of select="@name"/>
			</a> <span class="bcount">(книг: <i><xsl:value-of select="count(descendant::book)" /></i>)</span> </li>
		</xsl:for-each>
	</ol>
	<p><a id="showAllUp" href="#spisokRazdelov" style="padding-left: 15px; display: none;" onclick="showAll();"><b>Показать <i>все</i> книги</b></a></p>
	<p>Можете приступить непосредственно к просмотру разделов и книг в них.</p>
	
	</xsl:if>
	<xsl:apply-templates select="descr"/>
	
	<h2 id="publisherCont" style="display: none">Издательство "<span id="publisherStr">Publisher</span>". Книг: <span id="publisherNum">0</span></h2>
	<h2 id="seriesCont" style="display: none">Серия "<span id="seriesStr">Series</span>". Книг: <span id="seriesNum">0</span></h2>
	<h2 id="authorCont" style="display: none">Автор "<span id="authorStr">Author</span>". Книг: <span id="authorNum">0</span></h2>
 

	<xsl:apply-templates select="section"/>

	<p>
		<a id="backToSpisok" href="#spisokRazdelov" style="padding-left: 15px; display: none;"><b>Вернуться к списку категорий</b></a>
		<a id="showAllDown" href="#spisokRazdelov" style="padding-left: 15px; display: none;" onclick="showAll();"><b>Показать <i>все</i> книги</b></a>
	</p>
	<div id="copyright">~ Best regards, <a href="http://dexperix.net">DeXPeriX</a> ~</div>

	<script type="text/javascript">start();</script>
</body>
</html>
	</xsl:template>

<!--  Descr template - index page description -->
	<xsl:template match="descr">
	<p>На данный момент книги делятся всего на 2 категории:</p><br/>
	<div class="bookcase"><div class="booklbot"><div class="bookrtop"><div class="bookltop">
		<a href="professional.xml"><img src="data/prog.jpg" align="left" width="94" height="115" alt="Programming"/> Профессиональная литература</a>
		<p>Программирование — процесс и искусство создания компьютерных программ и/или программного обеспечения с помощью языков программирования. Программирование сочетает в себе элементы искусства, фундаментальных наук (прежде всего математики), инженерии и спорта.</p>
		<p>В узком смысле слова, программирование рассматривается как "кодирование". В более широком смысле программирование — процесс создания программ, то есть разработка программного обеспечения.</p>
	</div></div></div></div>
	<div class="bookcase"><div class="booklbot"><div class="bookrtop"><div class="bookltop">
		<a href="fantasy.xml"><img src="data/Elegant_Elf.gif" align="left" height="140" alt="Fantasy"/><!-- data/fan.jpg --> Фэнтези и фантастика</a>
		<p>Фэнтези (от англ. fantasy — «фантазия») — вид фантастической литературы, основанный на использовании мифологических и сказочных мотивов. В современном виде сформировался в начале XX века</p>
		<p>Фантастика — разновидность мимесиса, в узком смысле — жанр художественной литературы, кино и изобразительного искусства; её эстетической доминантой является категория фантастического, состоящая в нарушении рамок, границ, правил репрезентации («условностей»)</p>
	</div></div></div></div>
	</xsl:template>


<!--  Section template - print every section -->
	<xsl:template match="section">
		<h2><xsl:attribute name="id">
				<xsl:text>cat</xsl:text>
				<xsl:value-of select="position()"/>
			</xsl:attribute>
			<a>	
			<xsl:attribute name="onclick">
				<xsl:text>showOnlyCat("cat</xsl:text>
				<xsl:value-of select="position()"/>
				<xsl:text>");</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="href">
				<xsl:text>#cat</xsl:text>
				<xsl:value-of select="position()"/>
			</xsl:attribute>

 Раздел : "<xsl:apply-templates select="@name"/>"</a> <div class="secrig">книг в разделе: <i><xsl:value-of select="count(descendant::book)" /></i></div></h2>
		<script type="text/javascript">addCathegory("<xsl:text>cat</xsl:text><xsl:value-of select="position()"/>");</script>
		<xsl:apply-templates select="book"/>
	</xsl:template>

<!--  Book template - per book circle -->
	<xsl:template match="book">
		<script type="text/javascript">addBook("c<xsl:value-of select="1 + count(parent::*/preceding-sibling::*)"/>b<xsl:value-of select="position()"/>case", '<xsl:apply-templates select="author"/>', '<xsl:apply-templates select="title"/>', 'cat<xsl:value-of select="1 + count(parent::*/preceding-sibling::*)"/>', '<xsl:apply-templates select="publisher"/>', '<xsl:apply-templates select="series"/>');</script>
		<div class="bookcase">
				<xsl:attribute name="id">
					<xsl:text>c</xsl:text>
					<xsl:value-of select="1 + count(parent::*/preceding-sibling::*)"/>
					<xsl:text>b</xsl:text>
					<xsl:value-of select="position()"/>
					<xsl:text>case</xsl:text>
				</xsl:attribute>
			<div class="booklbot"><div class="bookrtop"><div class="bookltop">
			<xsl:if test="image">
				<div id="b-img-b" align="center"><div class="r"><div class="b"><div class="br"><div class="bl"><div class="tr"><div class="in" title="{title}"><a href="data/{image}" title="{title}"><img src="data/{image}" class="cover" alt="*"/></a></div></div></div></div></div></div></div>
			</xsl:if>

			<xsl:if test="mark">
				<img align="right" class="mark" >
					<xsl:attribute name="src">
						<xsl:text>data/diz/stars/</xsl:text>
						<xsl:apply-templates select="mark"/>
						<xsl:text>.gif</xsl:text>
					</xsl:attribute>

					<xsl:attribute name="alt">
						<xsl:text>Оценка : </xsl:text>
						<xsl:apply-templates select="mark"/>
					</xsl:attribute>

					<xsl:attribute name="title">
						<xsl:text>Оценка : </xsl:text>
						<xsl:apply-templates select="mark"/>
					</xsl:attribute>
				</img>
			</xsl:if>

			<h3>
				<xsl:attribute name="id">
					<xsl:text>c</xsl:text>
					<xsl:value-of select="1 + count(parent::*/preceding-sibling::*)"/>
					<xsl:text>b</xsl:text>
					<xsl:value-of select="position()"/>
					<xsl:text>start</xsl:text>
				</xsl:attribute>

				<xsl:apply-templates select="title"/>
			</h3>
			<span>Автор : </span><b><i><a href="#authorCont" class="authorLink"><xsl:attribute name="onclick">
				<xsl:text>showAuthor("</xsl:text>
				<xsl:apply-templates select="author"/>
				<xsl:text>");</xsl:text>				
			</xsl:attribute>
			<xsl:apply-templates select="author"/></a></i></b><br/>
			<xsl:if test="publisher"><span>Издательство : <a href="#publisherCont" class="publisherLink"><xsl:attribute name="onclick">
				<xsl:text>showPublisher("</xsl:text>
				<xsl:apply-templates select="publisher"/>
				<xsl:text>");</xsl:text>				
			</xsl:attribute>
			<xsl:apply-templates select="publisher"/></a></span><br/></xsl:if>
			<xsl:if test="series"><span>Серия : <a href="#seriesCont" class="seriesLink"><xsl:attribute name="onclick">
				<xsl:text>showSeries("</xsl:text>
				<xsl:apply-templates select="series"/>
				<xsl:text>");</xsl:text>				
			</xsl:attribute>
			<xsl:apply-templates select="series"/></a></span><br/></xsl:if>
			<xsl:if test="year"><span>Год : <a><i><xsl:apply-templates select="year"/></i></a></span><br/></xsl:if>
			<xsl:if test="pages"><span>Страниц : <a><i><xsl:apply-templates select="pages"/></i></a></span></xsl:if>
			<xsl:if test="isbn"><br/><span>ISBN : <a><i><xsl:apply-templates select="isbn"/></i></a></span></xsl:if>
						
			<p><xsl:apply-templates select="description"/></p>
		
			<div class="addinfo">
			<xsl:if test="state"><span class="bstate"><xsl:apply-templates select="state"/></span></xsl:if>
			<xsl:if test="comment"><span class="com_head ahovered">Комментарий</span>
				<div class="com_body">
					<xsl:attribute name="id">
						<xsl:text>c</xsl:text>
						<xsl:value-of select="1 + count(parent::*/preceding-sibling::*)"/>
						<xsl:text>b</xsl:text>
						<xsl:value-of select="position()"/>
						<xsl:text>comment</xsl:text>
					</xsl:attribute>
					<xsl:apply-templates select="comment"/>
				</div>
			</xsl:if>
			</div>

		</div></div></div></div>
	</xsl:template>


 </xsl:stylesheet>

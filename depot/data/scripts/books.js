var books = new Array('cid', 'author', 'title', 'catid', 'publisher', 'series');
books['cid'] = new Array();
books['author'] = new Array();
books['title'] = new Array();
books['catid'] = new Array();
books['publisher'] = new Array();
books['series'] = new Array();
var numBook = 0;

var cats = new Array();
var catnum = 0;

var aulets = new Array();
var aunum = new Array();



function addBook(cid, author, title, catid, publisher, series){
	books['cid'][numBook] = cid;
	books['author'][numBook] = author;
	books['title'][numBook] = title;
	books['catid'][numBook] = catid;
	books['publisher'][numBook] = publisher;
	books['series'][numBook] = series;
	numBook = numBook + 1;
	$("#searchFormD").show();

	//Author letters
	var spl = author.split(" ");
	var l = ' ';
	for (i = 0; i < spl.length; i++) {
		l = spl[i][0];
		$('#let'+l).show();
		if( !aunum[l] ) aunum[l] = 0;
		if( !aulets[l] ) aulets[l] = new Array();
		aulets[l][ aunum[l] ] = author;
		aunum[l]++;
	}
}

function addCathegory(catid){
	cats[catnum] = catid;
	catnum = catnum + 1;
}

function showAll(){
	$('#showAllUp').hide();
	$('#showAllDown').hide();
	$("#searchRes").hide();

	for(i=0; i< catnum; i++)
		$("#"+cats[i]).show();
	for (var i = 0; i < numBook; i++)
		$('#'+books['cid'][i]).show();
}

function showOnlyCat(catid){
	$("#searchRes").hide();
	$('#publisherCont').hide();
	$('#seriesCont').hide();
	$('#authorCont').hide();
	$('#tocs').show();
	$('#backToSpisok').show();
	$('#showAllUp').show();
	$('#showAllDown').show();
	for(i=0; i< catnum; i++)
		$("#"+cats[i]).hide();
	$("#"+catid).show();
	for (var i = 0; i < numBook; i++)
		if( books['catid'][i] != catid ) $('#'+books['cid'][i]).hide();
			else $('#'+books['cid'][i]).show();
}

function searchEngine(searchStr, type){
	if(!type) type = 'search';
	$("#searchRes").hide();
	$('#tocs').show();
	$('#backToSpisok').show();
	$('#showAllUp').show();
	$('#showAllDown').show();
	$('#publisherCont').hide();
	$('#seriesCont').hide();
	$('#authorCont').hide();

	for(i=0; i< catnum; i++)
		$("#"+cats[i]).hide();

	var showedBooks = 0;
	var booksHidden = 0;
	var ss = searchStr.toLowerCase();

	if( type!='search' ){
		$('#'+type+'Cont').show();
		$('#'+type+'Str').text(searchStr);
	}

	for (var i = 0; i < numBook; i++){
		var curCorrect = false;
		if( type=='search' ){
			var curStr = books['title'][i].toLowerCase() + '|' + books['author'][i].toLowerCase();
			if( curStr.indexOf(ss) >= 0) curCorrect = true;
		} else if( type=='author' ){
			if( books[type][i].indexOf(searchStr) >= 0 ) curCorrect = true;
		} else {
			if( books[type][i] == searchStr ) curCorrect = true;
		}

		if( curCorrect ){
			$('#'+books['cid'][i]).show();
			$('#'+books['catid'][i]).show();
			showedBooks = showedBooks + 1;
		} else {
			$('#'+books['cid'][i]).hide();
			booksHidden = booksHidden + 1;
		}
	}
	$("#searchResNum").text(showedBooks);
	if( type=='search' ){
		$("#searchRes").show();
	} else {
		$('#'+type+'Num').text(showedBooks);
	}
}

function showPublisher(pubstr){
	searchEngine(pubstr, 'publisher');
}

function showSeries(serstr){
	searchEngine(serstr, 'series');
}

function showAuthor(authstr){
	searchEngine(authstr, 'author');
}

function searchBook(){
	searchEngine( $("#stSearch").val() );
}

function start(){
	//alert(books['title'][1]);
	$(".com_body").hide();
	$("#header a, .hovered, .ahovered").css("color", "#222");
	$(".mark, .ahovered").css("opacity", "0.5");
	
	//toggle message_body
	$(".com_head").click(function(){
		$(this).next(".com_body").slideToggle(500)
		return false;
	});
	
	$("#header a, .hovered").hover(function() {
		$(this).stop().animate({opacity: "0.5"}, 350);
	}, function() {
		$(this).stop().animate({opacity: "1"}, 350);
	});
	
	$(".mark, .ahovered").hover(function() {
		$(this).stop().animate({opacity: "1"}, "slow");
	}, function() {
		$(this).stop().animate({opacity: "0.5"}, "slow");
	});

	//$('#tocs').hide();

	/*var alet = '';
	var first = true;
	for(i='А'; i<'Я'; i++){
		if( aunum[i] > 0 ){
			if( first ){
				first = false;
			} else {
				alet = alet + ', '; 
			}
			alet = alet + i;
		}			
	}
	//alert(alet);
	$("#authletcont").show();
	$("#authlets").show();
	var strHtml="Test";
	$("#authlets").append(strHtml);
	//$("#authlets").innerHTML = '<b>b</b>lav';
	*/
	
	
	//Larger thumbnail preview 
	$(".cover").hover(function() {
		if( $(this).height() == 160 ){
			var pa = $(this).parent();
			var paa = pa.parent();
			var paaa = paa.parent();
			var paaaa = paaa.parent();
			var paaaaa = paaaa.parent();

			pa.width(  $(this).width() +6 );
			paa.width(  $(this).width() );
			paaa.width(  $(this).width() +2 );
			paaaa.width(  $(this).width() +6 );
			paaaaa.width(  $(this).width() +8 );
		}
		$(this).css({'position' : 'absolute'});
		$(this).css({'left' : '0'});
		$(this).css({'top' : '0'});
		$(this).stop().animate({ height: '315px' }, 200);
		$(this).css({'z-index' : '10'});

	} , function() {
		$(this).stop().animate({ height: '160px' }, 200);
		$(this).css({'position' : 'static'});
	});

}

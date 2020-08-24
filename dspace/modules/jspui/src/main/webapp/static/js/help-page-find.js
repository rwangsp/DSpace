$(document).ready(function(event) {
	scrollAndExpand(window.location.href);
	$("a:not(.accordion-toggle)").click(function() {
		closeAll();
		scrollAndExpand($(this).attr('href'));
	});
});

$("#term").keyup(function(event){
    if(event.keyCode == 13){
        $("#find").click();  
    } else {
	closeAll();
        window.scrollTo(0,0);
    }    
});

$('#find').click(function(){
    var input = $('#term').val();
    if (input != '' && ($(document).find(':contains(' + input + ')').size() > 0)) {
            $('.collapse:not(.navbar-collapse)').each(function() {
                $(this).collapse('show');
            });
            doSearch($('#term').val());
    }
});

function closeAll() {
	$('.accordion-body.in').collapse('hide');
}

function scrollAndExpand(link) 
{
	if (link.search(/#collapse\d{1,5}$/) != -1) {
		var url_id = link.split('#')[1];
		var target = $('#' + url_id);
		if (target) {
			target.closest('.accordion-body').collapse('show');
			$('body, html').animate({
				scrollTop: target.position().top - 450
			});
		}
	}
}

function doSearch(text) {
    var sel;
    if (window.find && window.getSelection) {
        sel = window.getSelection();
        if (sel.rangeCount > 0) {
            sel.collapseToEnd();
        }
        return window.find(text, false, false, false, false, false, true);
    } else if (document.selection && document.body.createTextRange) {
        sel = document.selection;
        var textRange;
        if (sel.type == "Text") {
            textRange = sel.createRange();
            textRange.collapse(false);
        } else {
            textRange = document.body.createTextRange();
            textRange.collapse(true);
        }
        if (textRange.findText(text)) {
            textRange.select();
            return textRange.findText(text);
        }
    }
}

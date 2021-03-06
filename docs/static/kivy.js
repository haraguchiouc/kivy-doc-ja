$(document).ready(function () {
	// get real height of all elements inside div#content
	function getRealHeight() {
		var realHeight = 0;
		$("#content").children().each(function(){
			realHeight = realHeight + $(this).outerHeight(true);
		});
		return realHeight;
	}
	$('#content').css('min-height', getRealHeight());

	var bodyshortcut = false;
	function ensure_bodyshortcut() {
		if ( bodyshortcut == true )
			return;
		var bsc = $('<div class="bodyshortcut">&nbsp;</div>');
		bsc.insertAfter($('div.body h1:first'));
		bodyshortcut = true;
	};

	// if it's an API page, show the module name.
	var pagename = location.pathname.split('/');
	var is_api = false;
	pagename = pagename[pagename.length - 1];
	if (pagename.search('api-') == 0) {
		pagename = pagename.substr(4, pagename.length - 9);

		ensure_bodyshortcut();
		var modulename = $('<div class="left">Module: <a href="#">' + pagename + '</a></div>')
		modulename.appendTo($('div.bodyshortcut'));
		is_api = true;
	}

	// insert breaker only for the first data/class/function found.
	var apibreaker = false;
	$('div.body dl[class]').each(function (i1, elem) {
		// these are first level class: attribute and method are inside class.
		if (!$(elem).hasClass('data') &&
			!$(elem).hasClass('class') &&
			!$(elem).hasClass('exception') &&
			!$(elem).hasClass('function'))
			return;
		// dont accept dl inside dl
		if ($(elem).parents().filter('dl').length > 0)
			return;

		$(elem).addClass('api-level');

		if ( apibreaker == true )
			return;
		$('<div id="api"></div>')
			.attr('id', 'api')
			.html(
				$('<h2>API ' +
				  '<a id="api-toggle-desc" class="showed">Hide Description &uArr;</a>' +
				  '</h2>')
				)
			.insertBefore(elem);
		apibreaker = true;
	});


	$('div.body dl[class] dt').hover(
		function() { $(this).addClass('hover'); },
		function() { $(this).removeClass('hover'); }
	);

	if ( apibreaker == true ) {
		ensure_bodyshortcut();
		var apilink = $('<div class="navlink right"><a id="api-link" href="#api">Jump to API</a> &dArr;</div>');
		apilink.insertBefore($('div.bodyshortcut'));
	}

	/**
	$('#api-toggle-all').click(function() {
		if ($(this).hasClass('showed')) {
			$('div.body dl.api-level > dd').slideUp();
			$(this).removeClass('showed');
			$(this).html('Expand All &dArr;');
			$.cookie('kivy.toggleall', 'true');
		} else {
			$('div.body dl.api-level > dd').slideDown();
			$(this).addClass('showed');
			$(this).html('Collapse All &uArr;');
			$.cookie('kivy.toggleall', 'false');
		}
	});
	**/

	$('#api-toggle-desc').click(function() {
		if ($(this).hasClass('showed')) {
			$('div.body dl.api-level > dd p').hide();
			$('div.body dl.api-level > dd pre').hide();
			$('div.body dl.api-level > dd blockquote').hide();
			$('div.body dl.api-level > dd ul').hide();
			$(this).removeClass('showed');
			$(this).html('Show Descriptions &dArr;');
			$('#content').css('min-height',getRealHeight());
			$.cookie('kivy.toggledesc', 'true');
		} else {
			$('div.body dl.api-level > dd p').show();
			$('div.body dl.api-level > dd pre').show();
			$('div.body dl.api-level > dd blockquote').show();
			$('div.body dl.api-level > dd ul').show();
			$(this).addClass('showed');
			$(this).html('Hide Descriptions &uArr;');
			$('#content').css('min-height',getRealHeight());
			$.cookie('kivy.toggledesc', 'false');
		}
	});

	$('div.body dl.api-level dt').click(function() {
		$(this).next().children().toggle();
	});

	if ( $.cookie('kivy.toggledesc') == 'true' ) {
		$('div.body dl.api-level > dd > dl > dd').hide();
		$('#api-toggle-desc').removeClass('showed');
		$('#api-toggle-desc').html('Show Descriptions &dArr;');
	}

	if ( $.cookie('kivy.toggleall') == 'true' ) {
		$('div.body dl.api-level > dd').hide();
		$('#api-toggle').removeClass('showed');
		$('#api-toggle').html('Expand All &dArr;');
	}

	//----------------------------------------------------------------------------
	// Reduce the TOC page
	//----------------------------------------------------------------------------

	var ul = $('div.sphinxsidebarwrapper h3:eq(1) + ul > li > ul');
	$('div.sphinxsidebarwrapper h3:eq(1) + ul').detach();
	ul.insertAfter($('div.sphinxsidebarwrapper h3:eq(1)'));
	$("div.sphinxsidebarwrapper ul").each(function() {
		if ($(this).children().length < 1)
			$(this).remove()
	});

	//----------------------------------------------------------------------------
	// Menu navigation
	//----------------------------------------------------------------------------
	$('div.sphinxsidebarwrapper > ul > li > a').each(function(index, item) {
		$(item)
			.attr('href', '#')
			.addClass('mainlevel');
		if ( !is_api ) {
			$(item)
				.bind('mousedown', function() {
				$('div.sphinxsidebar ul li ul').filter(function (index, child) {
					if (child != $(item).parent().children('ul').get(0)) return child;
				}).slideUp();
				$(item).parent().children('ul').slideToggle();
			});
		}
	})

	$('div.sphinxsidebarwrapper li.current').parent().show();

	if ( !is_api ) {
		$('div.sphinxsidebarwrapper ul li').each(function(index, item) {
			if ($(item).children('ul').length > 0) {
				$(item).children('a').addClass('togglable');
			}
		});
	}

	// FIXME
	$('div.sphinxsidebar a[href$="api-kivy.html"]').parent().parent().addClass('api-index');
	$('div.sphinxsidebar a[href$="api-kivy.utils.html"]').parent().parent().addClass('api-index');
	$('li.current.toctree-l2').slice(0, -1).removeClass('current');

	$('ul.api-index a').each(function(index, item) {
		var url = $(item).attr('href').slice(0, -5);
		if (url == '') {
			$(item).attr('href', location.pathname);
			url = location.pathname.slice(0, -5);
		}
		url = url.substr(url.search('api-') + 4);
		$(item).empty().append(url);
	});

	// Hide API section if we are not in the API.
	// or hide all the others sections if we are in the API
	if ( is_api ) {
		$('div.sphinxsidebarwrapper > ul > li > ul').filter(
				function(index, item) {
					if (! $(item).hasClass('api-index'))
						return item;
				}).parent().hide();
		$('.nav-api').addClass('current');
	} else {
		$('div.sphinxsidebarwrapper > ul > li > ul').filter(
				function(index, item) {
					if ($(item).hasClass('api-index'))
						return item;
				}).parent().hide();
		$('.nav-guides').addClass('current');
	}


	if ( is_api ) {
		var divscroll = $('div.sphinxsidebarwrapper');
		var divscrollwidth = divscroll.width();
		var divapi = $('.api-index');
		var initial_offset = divscroll.offset();
		var jwindow = $(window);

		function update_api() {
			var ywindow = jwindow.scrollTop();
			var ypadding = 20;
			var ydiff = ywindow - initial_offset.top;
			var height = jwindow.height();
			if ( ydiff + ypadding > 0) {
				divscroll.css('position', 'fixed').css('top', ypadding);
				height -= ypadding * 2;
			} else {
				divscroll.css('position', 'static').css('top', -ydiff);
				height += ydiff - ypadding;
			}
			divscroll.height(height).width(divscrollwidth);
			divapi.height(divapi.offsetParent().height() - divapi.position().top)
		}

		$(window).scroll(update_api).bind('resize', update_api);

		update_api();

		$('.toc').hide();


		// Resolve API version
		function read_version(item, default_version) {
			if ( item === undefined )
				return default_version;
			var version = item.find('p').text();
			if ( version == "" )
				return default_version;
			item.detach();
			version = version.replace('New in version ', '');
			if ( version.substr(-1) == '.' )
				version = version.substr(0, version.length - 1);
			return version;
		}

		//function read_version(item, version) { return version; }

		// get module version
		var module_version = read_version($('div.body > div.section > div.versionadded'), '1.0.0');
		var html_version = '<span class="versionadded">Added in <span>' + module_version + '</span></span>';
		$('div.bodyshortcut').append(html_version);

		// resolve class version, default to module if nothing has been found
		$('div.section > dl[class]').each(function (i1, el_class) {
			var rel_class = $(el_class);
			var class_version = read_version(
				rel_class.find('> dd > div.versionadded'), module_version);

			var html_version = '<span class="versionadded">Added in <span>' + class_version + '</span></span>';
			rel_class.find('> dt').append(html_version);

			// resolve method / attr version
			rel_class.find('> dd > dl[class]').each(function (i2, el_methattr) {
				var rel_methattr = $(el_methattr);
				var methattr_version = read_version(
					rel_methattr.find('> dd > div.versionadded'), class_version);
				var html_version = '<span class="versionadded">Added in <span>' + methattr_version + '</span></span>';
				rel_methattr.find('> dt').append(html_version);
			});
		});

	} else {
		var divscroll = $('div.sphinxsidebar');
		var initial_offset = divscroll.offset();
		var jwindow = $(window);
		var b = divscroll.position().top + divscroll.height();

		function update_sidebar() {
			var ywindow = jwindow.scrollTop();
			var ymintop = initial_offset.top;
			var a = ywindow + jwindow.height();
			if ( ywindow > b ) {
				var current = $('li.toctree-l1.current').position().top;
				divscroll.css('position', 'fixed').css('top', -current);
			} else {
				divscroll.css('position', 'relative').css('top', 0);
			}
		}

		$(window).scroll(update_sidebar).bind('resize', update_sidebar);
		update_sidebar();

		if ($('.toc > ul > li> ul').length < 1)
			$('.toc').hide();

		var section_title = $('li.toctree-l1.current > a').text();
		$('div.body h1:eq(0)').prepend(section_title + ' &raquo; ');
	}

});

// get url for nightly wheel
// ajax from https://github.com/padolsey-archive/jquery.fn/tree/master/cross-domain-ajax
// <button onclick="getNightly('cp27','win32');">Get wheel!</button>

// leading zeros for date
function addZeros(num, size) {
    var s = num + '';
    while (s.length < size) s = '0' + s;
    return s;
}

function wheelUrl(fromAjax, pyVer, arch) {
    var prefixUrl = 'https://docs.google.com/uc?id=';
    var fileID = 'entry-([a-zA-Z0-9\\-]*?)';
    var htmlGarbage = '(?:" role="link" tabindex="0">\
<div class="flip-entry-info"><div class="flip-entry-visual">\
<div class="flip-entry-visual-card"><div class="flip-entry-icon">\
<img alt="Compressed Archive" src="https:\\/\\/ssl.gstatic.com\\/do\
cs\\/doclist\\/images\\/icon_9_archive_xl128\\.png"\\/><\\/div>\
<\\/div><\\/div><div class="flip-entry-list-icon"><img alt="" src="\
https:\\/\\/ssl\\.gstatic\\.com\\/docs\\/doclist\\/images\\/icon_9_\
archive_list\\.png"\\/><\\/div><div class="flip-entry-title">)';
    var wheel = '(Kivy-\\d\\.\\d\\.\\d)(\\.\\w{4}_$date$_git\\_?\\w\
{7}-$pyVer$)(-none|_\\d{8}_git_\\w{7}-$pyVer$m)(-$arch$.whl)';
    var date = new Date();
    var yesterday = addZeros(date.getDate() - 1, 2);
    var month = addZeros(date.getMonth() + 1, 2);
    var year = date.getFullYear();
    date = yesterday + month + year;
    wheel = wheel.replace("$date$", date).replace("$pyVer$", pyVer);
    wheel = wheel.replace("$pyVer$", pyVer).replace("$arch$", arch);
    var regex = fileID + htmlGarbage + wheel;
    var text = fromAjax.responseText;
    try {
        whlUrl = prefixUrl + text.match(new RegExp(regex))[1];
        var win = window.open(whlUrl, '_blank');
        if (win) {
            win.focus();
        }
        else {
          alert('Please allow pop-ups for this page!');
        }
    }
    catch (e) {
        alert('No nightly wheel is available yet!');
    }
}

// getNightly('cp27', 'win32'); for cpXY and win32, win_amd64
function getNightly(pyVer, arch) {
    var whlURL;
    var driveUrl = 'https://drive.google.com/folderview?id=0B1_HB9J8\
mZepOV81UHpDbmg5SWM&usp=sharing#list';
    jQuery.ajax = (function(_ajax) {
        var protocol = location.protocol,
            hostname = location.hostname,
            exRegex = RegExp(protocol + '//' + hostname),
            YQL = 'http' + (/^https/.test(protocol)?'s':'') + '://query\
.yahooapis.com/v1/public/yql?callback=?',
            query = 'select * from html where url="{URL}" and xpath="*"';
        function isExternal(url) {
            return !exRegex.test(url) && /:\/\//.test(url);
        }
        return function(o) {
            var url = o.url;
            if (/get/i.test(o.type) && !/json/i.test(o.dataType) &&
                isExternal(url)) {
                o.url = YQL;
                o.dataType = 'json';
                o.data = {
                    q: query.replace(
                        '{URL}',
                        url + (o.data ?
                            (/\?/.test(url) ? '&' : '?') + jQuery.param(o.data)
                        : '')
                    ),
                    format: 'xml'
                };
                if (!o.success && o.complete) {
                    o.success = o.complete;
                    delete o.complete;
                }
                o.success = (function(_success) {
                    return function(data) {
                        var rx = /<script[^>]+?\/>|<script(.|\s)*?\/script>/gi;
                        if (_success) {
                            _success.call(this, {
                                responseText: data.results[0]
                                    .replace(rx, '')
                            }, 'success');
                        }
                    };
                })(o.success);
            }
            return _ajax.apply(this, arguments);
        };
    })(jQuery.ajax);
    $.ajax({
        url: driveUrl,
        type: 'GET',
        async: false,
        success: function(res) {
            wheelUrl(res, pyVer, arch);
        }
    });
}

$(document).ready(function() {
	function getHelp (href) {
		// you can now get the help page using prompt('getHelp:XXX') method instead of jquery load method.
		var helpStr = prompt('getHelp:' + href);
		try {
			console.log(helpStr);
		} catch (ignore) {
			//
		}

		return helpStr;
	}

	function getHelpContent (href) {
        var $help = $(getHelp(href)).filter('.b-content');
		
		if (!$help.length) {
			$help = $(getHelp(href)).filter('.b-main').find('.b-content')
		}
		return $help.html();
	}

	var body = $('body'),
		hasNavigatedAway = false;

	// main page (0-level) navigation
	body.on('click', 'a', function (evt) {
		var lnk = $(evt.target).closest('a')[0];
		if (lnk.href.substr(0, 4) === 'http') { // external link
			window.open(lnk.href, '_system');
		}

		evt.preventDefault();
		var clickedItem = $(this);

		$('.b-header h2').html($(clickedItem).attr('title'));
		$('.js-nav-first a').removeClass('current');


		$('.b-content').html(
			getHelpContent(clickedItem.attr('href'))
		);

		body.scrollTop(0);
		
		$('.js-nav-first, .b-link, .b-content').addClass('mobile');
		return false;
	});

	// 1-level navigation
	body.on('click', '.b-content .js-nav-sub a', function(evt) {
		hasNavigatedAway = true;

		evt.preventDefault();
		var clickedItem = $(this);

		$('.b-header h2').html($(clickedItem).attr('title'));
		$('.js-nav-sub a').removeClass('current');
		clickedItem.addClass('current');

		$('.b-content').html(
			getHelpContent(clickedItem.attr('href'))
		);

		body.scrollTop(0);

		return false;
	});

	body.on('click', '.b-link', function () {
		var elem = $(this);

		if (elem.hasClass('menu')) {
			$('.js-nav-first, .b-link, .b-content').removeClass('mobile');
		} else if (elem.hasClass('search')) {
			elem.addClass('hide');
			$('.b-form_search').focus().addClass('mobile');
		}
	});

	$('.b-form_search').on('blur', function () {
		var elem = $(this);

		if (elem.hasClass('mobile')) {
			elem.removeClass('mobile');
			$('.b-link.search').removeClass('hide');
		};
	});


	var isTablet,
		win = $(window),
		winW = win.width(),
		winH = win.height();

	function onResize () {
		if (Math.max(winW, winH) > 720) {
			isTablet = true;

			if (!hasNavigatedAway) {
				$('.js-nav-first a:first').trigger('click');
				hasNavigatedAway = true;
			}
		}
	}

	win.on('resize', onResize);

	onResize();
});

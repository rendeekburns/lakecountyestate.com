var tableOfContents = function() {
	var $h2s = $('h2').length;
	console.log("Anything you put here loads last, so you have access to jQuery and all plugins. \n");
	console.log("var $h2s = $('h2').length;");
	console.log("There are " + $h2s + " <h2> tags on the page!");

	// Auto ToC
	(function($){
		var ToC =
			"<nav class='table-of-contents'>" +
				"<ul>";

		var newLine, el, title, link;

		$(".section-title").each(function() {

			el = $(this);
			title = el.text();
			link = "#" + el.attr("id");

			newLine =
				"<li>" +
					"<a href='" + link + "'>" +
						title +
					"</a>" +
				"</li>";

			ToC += newLine;

		});

		ToC +=
			 "</ul>" +
			"</nav>";

		$("#toc").prepend(ToC);
	})(jQuery);
}
$(function() { // enable autocomplete for ordered_products
	$(document).on("focus",".product-name", function() {
		$('.product-name').autocomplete({
			source: $('.product-name').data('autocomplete-source')
		}); 
	});
})

$(function() { // set insert location for new ordered_product fields in order nested form 
    $("a.add-ordered-product").
      data("association-insertion-position", 'append').
      data("association-insertion-node", '#ordered_products_container');
});

$(function() { // set location of new color fields in order nested form 
    $("a.add-color").
      data("association-insertion-position", 'before').
      data("association-insertion-node", "this");
});
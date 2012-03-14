$(function() { // enable autocomplete for ordered_products
    $(document).on("focus",".product-name", function() {
        $('.product-name').autocomplete({
            source: $('.product-name').data('autocomplete-source')
        });
    });
})

$(function() { // set insert location for new ordered_product fields in order nested form
    if ($('#ordered_products_container').children().size() > 0){
        var dom_html = '#ordered_products_container li.ordered-product:last'
        var position = 'after'
    }
    else {
        var dom_html = '#ordered_products_container'
        var position = 'append'
    }
    $("a.add-ordered-product").
    data("association-insertion-position", position).
    data("association-insertion-node", dom_html);
});

$(function() { // set location of new color fields in order nested form 
    $("a.add-color").
    data("association-insertion-position", 'append').
    data("association-insertion-node");
});
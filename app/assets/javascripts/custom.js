$(function() { // enable autocomplete for ordered_products
    $(document).on("focus",".product-name", function() {
        $('.product-name').autocomplete({
            source: $('.product-name').data('autocomplete-source')
        });
    });
})

$(function() { // enable autocomplete for user_names
    $(document).on("focus",".user-name", function() {
        $('.user-name').autocomplete({
            source: $('.user-name').data('autocomplete-source')
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


$(function() { // set insert location for new ordered_product fields in order nested form
    if ($('#groupas_container').children().size() > 0){
        var dom_html = '#groupas_container li.groupa:last'
        var position = 'after'
    }
    else {
        var dom_html = '#groupas_container'
        var position = 'append'
    }
    $("a.add-groupa").
    data("association-insertion-position", position).
    data("association-insertion-node", dom_html);
});

$(function() { // set location of new color fields in order nested form 
    $("a.add-groupa-user").
    data("association-insertion-position", 'append').
    data("association-insertion-node");
});




$(function() { // set insert location for new ordered_product fields in order nested form
    if ($('#groupbs_container').children().size() > 0){
        var dom_html = '#groupbs_container li.groupb:last'
        var position = 'after'
    }
    else {
        var dom_html = '#groupbs_container'
        var position = 'append'
    }
    $("a.add-groupb").
    data("association-insertion-position", position).
    data("association-insertion-node", dom_html);
});

$(function() { // set location of new color fields in order nested form 
    $("a.add-groupb-user").
    data("association-insertion-position", 'append').
    data("association-insertion-node");
});




$(function() { // set insert location for new ordered_product fields in order nested form
    if ($('#groupcs_container').children().size() > 0){
        var dom_html = '#groupcs_container li.groupc:last'
        var position = 'after'
    }
    else {
        var dom_html = '#groupcs_container'
        var position = 'append'
    }
    $("a.add-groupc").
    data("association-insertion-position", position).
    data("association-insertion-node", dom_html);
});

$(function() { // set location of new color fields in order nested form 
    $("a.add-groupc-user").
    data("association-insertion-position", 'append').
    data("association-insertion-node");
});
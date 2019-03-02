// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require bootstrap
//= require_tree .

$(document).ready(function(){
    $('.quantity,.price').on('change keyup', function(){
    		calculate($(this));
    });
    
    $('.remove_product').on('click', function(){
    		$(this).closest('tr').remove();
    		calculate($(this));
    });
 });

function calculate(self) {
	var $tblrow = self;
  var quantity = $tblrow.closest('tr').find("[class=quantity]").val();
  var price = $tblrow.closest('tr').find("[class=price]").val();
  var subTotal = parseInt(quantity, 10) * parseFloat(price);

  if (!isNaN(subTotal)) {

    $tblrow.closest('tr').find('.sub_total').val(subTotal.toFixed(2));
    var grandTotal = 0;

    $(".sub_total").each(function () {
        var stval = parseFloat($(this).val());
        grandTotal += isNaN(stval) ? 0 : stval;
    });

    $('.grand_total').val(grandTotal.toFixed(2));
  }
}

function validate_number(evt) {
    var theEvent = evt || window.event;

    // Handle paste
    if (theEvent.type === 'paste') {
        key = event.clipboardData.getData('text/plain');
    } else {
    // Handle key press
        var key = theEvent.keyCode || theEvent.which;
        key = String.fromCharCode(key);
    }
    var regex = /[0-9]|\./;
    if( !regex.test(key) ) {
      theEvent.returnValue = false;
      if(theEvent.preventDefault) theEvent.preventDefault();
    }
  }
  function validate_integer(evt) {
    var theEvent = evt || window.event;

    // Handle paste
    if (theEvent.type === 'paste') {
        key = event.clipboardData.getData('text/plain');
    } else {
    // Handle key press
        var key = theEvent.keyCode || theEvent.which;
        key = String.fromCharCode(key);
    }
    var regex = /[0-9]/;
    if( !regex.test(key) ) {
      theEvent.returnValue = false;
      if(theEvent.preventDefault) theEvent.preventDefault();
    }
  }
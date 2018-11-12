$(document).ready(function(){
  $("#admin_shop").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'shop[name]' : "required",
      'shop[contact1]' : "required",
      'shop[cantact2]' : "required",
      'shop[email]' : "required",
      'shop[fax]' : "required",
      'shop[address]' : "required"
    },
    messages: { 
      'shop[name]' : "Please enter shop name",
      'shop[contact1]' : "Please enter contact1",
      'shop[contact2]' : "Please enter contact2",
      'shop[email]' : "This field is required",
      'shop[fax]' : "This field is required",
      'shop[address]' : "Please enter address"
    }
  });
})

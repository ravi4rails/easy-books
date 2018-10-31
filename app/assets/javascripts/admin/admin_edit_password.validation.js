$(document).ready(function(){
  $("#admin_edit_password").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'admin[password]' : "required",
      'admin[password_confirmation]' : "required"
    },
    messages: { 
      'admin[password]' : "Please enter password",
      'admin[password_confirmation]' : "Please enter confirm password",
    }
  });
})

$(document).ready(function(){
  $("#user_edit_password").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'user[password]' : "required",
      'user[password_confirmation]' : "required"
    },
    messages: { 
      'user[password]' : "Please enter password",
      'user[password_confirmation]' : "Please enter confirm password",
    }
  });
})

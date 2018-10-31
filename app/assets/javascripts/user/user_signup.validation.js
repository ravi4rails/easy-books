$(document).ready(function(){
  $("#user-signup").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'user[email]' : "required",
      'user[password]' : "required",
      'user[password_confirmation]' : "required"
    },
    messages: { 
      'user[email]' : "Please enter user email",
      'user[password]' : "Please enter password",
      'user[password_confirmation]' : "Please enter confirm password",
    }
  });
})

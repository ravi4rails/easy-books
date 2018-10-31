$(document).ready(function(){
  $("#user_signin").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'user[email]' : "required",
      'user[password]' : "required",
    },
    messages: { 
      'user[email]' : "Please enter user email",
      'user[password]' : "Please enter password",
    }
  });
})

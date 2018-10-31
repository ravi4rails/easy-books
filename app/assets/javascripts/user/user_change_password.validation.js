$(document).ready(function(){
  $("#user_change_password").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'user[email]' : "required",
     
    },
    messages: { 
      'user[email]' : "Please enter user email",
    }
  });
})

$(document).ready(function(){
  $("#admin_login").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'admin[email]' : "required",
      'admin[password]' : "required",
    },
    messages: { 
      'admin[email]' : "Please enter admin email",
      'admin[password]' : "Please enter password",
    }
  });
})

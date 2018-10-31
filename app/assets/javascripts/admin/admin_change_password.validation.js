$(document).ready(function(){
  $("#admin_change_password").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'admin[email]' : "required",
     
    },
    messages: { 
      'admin[email]' : "Please enter admin email",
    }
  });
})

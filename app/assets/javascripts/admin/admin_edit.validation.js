$(document).ready(function(){
  $("#admin_edit").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'admin[email]' : "required",
      'admin[password]' : "required",
      'admin[password_confirmation]' : "required",
      'admin[current_password]' : "required"
    },
    messages: { 
      'admin[email]' : "Please enter admin email",
      'admin[password]' : "Please enter password",
      'admin[password_confirmation]' : "Please enter confirm password",
      'admin[current_password]' : "Please enter current password",
    }
  });
})

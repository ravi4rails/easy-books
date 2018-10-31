$(document).ready(function(){
  $("#book_category").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'book_category[name]' : "required"
    },
    messages: { 
      'book_category[name]' : "Please enter book category name"
    }
  });
})

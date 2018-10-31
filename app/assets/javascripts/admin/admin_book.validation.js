$(document).ready(function(){
  $("#admin_book").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'book[name]' : "required",
      'book[price]' : "required",
      'book[detail]' : "required",
      'book[front_cover_image]' : "required",
      'book[back_cover_image]' : "required",
      'book[book_category_id]' : "required"
    },
    messages: { 
      'book[name]' : "Please enter book name",
      'book[price]' : "Please enter book price",
      'book[detail]' : "Please enter book detail",
      'book[front_cover_image]' : "This field is required",
      'book[back_cover_image]' : "This field is required",
      'book[book_category_id]' : "Please enter book category"
    }
  });
})

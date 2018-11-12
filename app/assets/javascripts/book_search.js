$( function() {
  attags = "http://localhost:3000/book-keyword.json";
  console.log(attags);
  availableTags = [];
  $.getJSON(attags, function(data){
    $.each(data, function (index, value) {
      availableTags.push(value);
    });
  });
  $( "#tags" ).autocomplete({
    source: availableTags
  });
  $( "#tags_home" ).autocomplete({
    source: availableTags
  });
});
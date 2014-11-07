$(function(){
  $("body").on("paste keyup keydown", "#image-input", previewImage);
});

var previewImage = function(){
  var imageUrl = document.getElementById("image-input").value;
  var imagePreview = $("#image-preview");
  
  imagePreview.attr("src", imageUrl);
};


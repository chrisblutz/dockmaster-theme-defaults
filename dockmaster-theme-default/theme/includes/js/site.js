$(function(){
  $(".toggle").click(function(){
    $(this).next().slideToggle("fast");
    var text = $(this).find(".toggle-name").text();
    $(this).find(".toggle-name").text(
      text == "SHOW SOURCE" ? "HIDE SOURCE" : "SHOW SOURCE");
  });
});

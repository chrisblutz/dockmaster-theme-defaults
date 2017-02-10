$(function(){
  $(".toggle").click(function(){
    $(this).next().slideToggle("fast");
    var text = $(this).find(".toggle-name").text();
    $(this).find(".toggle-name").text(
      text == "View Source" ? "Hide Source" : "View Source");
  });
});

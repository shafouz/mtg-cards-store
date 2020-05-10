$(document).on("turbolinks:load", function(){

  $(".eld").on("click", function(){
    $.ajax({
      url: "/products/get_eld",
      dataType: 'html',
      success: function(data){
        
      }
    });
  });
});
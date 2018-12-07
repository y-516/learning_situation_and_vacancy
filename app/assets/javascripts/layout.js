document.addEventListener("turbolinks:load",(function(){
  $('#menu li').hover(function(){
      $("ul:not(:animated)", this).slideDown();
  }, function(){
      $("ul.child",this).slideUp();
  });
}));

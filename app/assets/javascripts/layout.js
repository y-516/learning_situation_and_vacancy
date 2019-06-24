// ドロップダウンメニュー
document.addEventListener("turbolinks:load",(function(){
  $('#menu li').hover(function(){
      $("ul:not(:animated)", this).slideDown();
  }, function(){
      $("ul.child",this).slideUp();
  });
}));
// メッセージフェードアウト
$(function(){
setTimeout("$('.meg').fadeOut('slow')", 1000)
})
$(function(){
setTimeout("$('.message').fadeOut('slow')", 1000)
})

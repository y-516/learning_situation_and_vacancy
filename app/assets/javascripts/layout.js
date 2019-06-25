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
setTimeout("$('.meg').fadeOut('slow')", 2000)
})
$(function(){
setTimeout("$('.message').fadeOut('slow')", 2000)
})

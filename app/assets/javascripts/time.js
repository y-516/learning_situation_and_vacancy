function getWeekDay() {
        var weekDay = ["日", "月", "火", "水", "木", "金", "土"];
        var date = new Date;
        return weekDay[date.getDay()];
    }

function set2fig(num) {
   var ret;
   if( num < 10 ) { ret = "0" + num; }
   else { ret = num; }
   return ret;
}
function showClock2() {
   var nowTime = new Date();
   var nowYear = set2fig(nowTime.getFullYear());
   var nowMonth = set2fig(nowTime.getMonth()+1);
   var nowDate = set2fig( nowTime.getDate());
   var nowDay = getWeekDay();
   var nowHour = set2fig( nowTime.getHours() );
   var nowMin  = set2fig( nowTime.getMinutes() );
   var nowSec  = set2fig( nowTime.getSeconds() );
   var msg = "現時刻" +nowYear + "年" + nowMonth + "月" +nowDate + "日" + nowDay + "曜日" +nowHour + ":" + nowMin + ":" + nowSec;
   document.getElementById("real_time").innerHTML = msg;
}
setInterval('showClock2()',1000);


//   $(function() {countDown();});
//
//   function countDown() {
//   // スタートは現在の時間
//   var startDateTime = new Date();
//   // 24 * 60 * 60 * 1000 = 1日のミリ秒(86400000)
//   var a_day = 24 * 60 * 60 * 1000;
// // Math.floor=引数の数字切り捨て
// // 期限から現在までの『残時間の日の部分』
//   var d = Math.floor(startDateTime / a_day)
//
// // 期限から現在までの『残時間の時間の部分』
//   var h = Math.floor((startDateTime % a_day) / (60 * 60 * 1000))
//
// // 残時間を秒で割って残分数を出す。
// // 残分数を60で割ることで、残時間の「時」の余りとして、『残時間の分の部分』を出す
//   var m = Math.floor((startDateTime % a_day) / (60 * 1000)) % 60
//
// // 残時間をミリ秒で割って、残秒数を出す。
// // 残秒数を60で割った余りとして、「秒」の余りとしての残「ミリ秒」を出す。
// // 更にそれを60で割った余りとして、「分」で割った余りとしての『残時間の秒の部分』を出す
//   var s = Math.floor((startDateTime % a_day) / 1000) % 60 % 60
//
//   $("#TimeLeft").text(d + '日' + h + '時間' + m + '分' + s + '秒');
//     setInterval('countDown()',1000 );
//   }

  // var learning_only_ary = [];
  // var learning_id_only_ary = [];
  //
  //
  // js_learning.forEach(function(learning_each){
  //     learning_only_ary.push(learning_each.learning_done);
  // });
  // console.log(learning_only_ary)
  //
  // js_learning.forEach(function(learning_id){
  //     learning_id_only_ary.push(learning_id.id);
  // });
  // console.log(learning_id_only_ary)
  //
  //
  //
  //   $(function() {
  //       var learning_ary = learning_only_ary;
  //
  //       learning_ary.forEach(function(l_ary_func, index) {
  //         countDown(l_ary_func, `#timer${index + 1}`);
  //       })
  //     });
  //
  //
  //
  //   function countDown(l_ary_func, displayElement) {
  //     var timer = new Timer();
  //     var now_time = new Date();
  //     var limit_time = new Date(l_ary_func);
  //     var diff_time = limit_time - now_time
  //     timer.start({countdown: true, startValues: {seconds: diff_time / 1000}});
  //     timer.addEventListener('secondsUpdated', function (e) {
  //       $(displayElement).html(timer.getTimeValues().toString());
  //     })
  //   }


    // var testtimers = [
    //   '2018-11-10T23:00:00.000+09:00',
    //   '2018-11-10T22:00:00.000+09:00'
    // ]
  // console.log(t);
  // console.log(timers);


//   $(function() {countDown();});
//
//   function countDown() {
//   // スタートは現在の時間
//   var startDateTime = new Date();
//   // 勉強終了時間
//   var endDateTime = new Date(n);
//   // 時間の差
//   var difference = endDateTime - startDateTime;
//   // 24 * 60 * 60 * 1000 = 1日のミリ秒(86400000)
//   var a_day = 24 * 60 * 60 * 1000;
// // Math.floor=引数の数字切り捨て
// // 期限から現在までの『残時間の日の部分』
//   var d = Math.floor(difference / a_day)
//
// // 期限から現在までの『残時間の時間の部分』
//   var h = Math.floor((difference % a_day) / (60 * 60 * 1000))
//
// // 残時間を秒で割って残分数を出す。
// // 残分数を60で割ることで、残時間の「時」の余りとして、『残時間の分の部分』を出す
//   var m = Math.floor((difference % a_day) / (60 * 1000)) % 60
//
// // 残時間をミリ秒で割って、残秒数を出す。
// // 残秒数を60で割った余りとして、「秒」の余りとしての残「ミリ秒」を出す。
// // 更にそれを60で割った余りとして、「分」で割った余りとしての『残時間の秒の部分』を出す
//   var s = Math.floor((difference % a_day) / 1000) % 60 % 60
//
//   $("#TimeLeft").text(d + '日' + h + '時間' + m + '分' + s + '秒');
//     setInterval('countDown()',1000 );
//   }
